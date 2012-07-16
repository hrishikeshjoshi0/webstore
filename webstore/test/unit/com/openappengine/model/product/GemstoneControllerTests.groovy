package com.openappengine.model.product



import org.junit.*
import grails.test.mixin.*

@TestFor(GemstoneController)
@Mock(Gemstone)
class GemstoneControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/prodGemstone/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.prodGemstoneInstanceList.size() == 0
        assert model.prodGemstoneInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.prodGemstoneInstance != null
    }

    void testSave() {
        controller.save()

        assert model.prodGemstoneInstance != null
        assert view == '/prodGemstone/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/prodGemstone/show/1'
        assert controller.flash.message != null
        assert Gemstone.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/prodGemstone/list'


        populateValidParams(params)
        def prodGemstone = new Gemstone(params)

        assert prodGemstone.save() != null

        params.id = prodGemstone.id

        def model = controller.show()

        assert model.prodGemstoneInstance == prodGemstone
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/prodGemstone/list'


        populateValidParams(params)
        def prodGemstone = new Gemstone(params)

        assert prodGemstone.save() != null

        params.id = prodGemstone.id

        def model = controller.edit()

        assert model.prodGemstoneInstance == prodGemstone
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/prodGemstone/list'

        response.reset()


        populateValidParams(params)
        def prodGemstone = new Gemstone(params)

        assert prodGemstone.save() != null

        // test invalid parameters in update
        params.id = prodGemstone.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/prodGemstone/edit"
        assert model.prodGemstoneInstance != null

        prodGemstone.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/prodGemstone/show/$prodGemstone.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        prodGemstone.clearErrors()

        populateValidParams(params)
        params.id = prodGemstone.id
        params.version = -1
        controller.update()

        assert view == "/prodGemstone/edit"
        assert model.prodGemstoneInstance != null
        assert model.prodGemstoneInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/prodGemstone/list'

        response.reset()

        populateValidParams(params)
        def prodGemstone = new Gemstone(params)

        assert prodGemstone.save() != null
        assert Gemstone.count() == 1

        params.id = prodGemstone.id

        controller.delete()

        assert Gemstone.count() == 0
        assert Gemstone.get(prodGemstone.id) == null
        assert response.redirectedUrl == '/prodGemstone/list'
    }
}
