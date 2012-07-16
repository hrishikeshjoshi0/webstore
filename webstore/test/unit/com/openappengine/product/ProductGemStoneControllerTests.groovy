package com.openappengine.product



import org.junit.*

import com.openappengine.model.product.Gemstone
import com.openappengine.model.product.GemstoneController

import grails.test.mixin.*

@TestFor(GemstoneController)
@Mock(Gemstone)
class ProdGemstoneControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ProdGemstone/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.ProdGemstoneInstanceList.size() == 0
        assert model.ProdGemstoneInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.ProdGemstoneInstance != null
    }

    void testSave() {
        controller.save()

        assert model.ProdGemstoneInstance != null
        assert view == '/ProdGemstone/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ProdGemstone/show/1'
        assert controller.flash.message != null
        assert Gemstone.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ProdGemstone/list'


        populateValidParams(params)
        def ProdGemstone = new Gemstone(params)

        assert ProdGemstone.save() != null

        params.id = ProdGemstone.id

        def model = controller.show()

        assert model.ProdGemstoneInstance == ProdGemstone
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ProdGemstone/list'


        populateValidParams(params)
        def ProdGemstone = new Gemstone(params)

        assert ProdGemstone.save() != null

        params.id = ProdGemstone.id

        def model = controller.edit()

        assert model.ProdGemstoneInstance == ProdGemstone
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ProdGemstone/list'

        response.reset()


        populateValidParams(params)
        def ProdGemstone = new Gemstone(params)

        assert ProdGemstone.save() != null

        // test invalid parameters in update
        params.id = ProdGemstone.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ProdGemstone/edit"
        assert model.ProdGemstoneInstance != null

        ProdGemstone.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ProdGemstone/show/$ProdGemstone.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ProdGemstone.clearErrors()

        populateValidParams(params)
        params.id = ProdGemstone.id
        params.version = -1
        controller.update()

        assert view == "/ProdGemstone/edit"
        assert model.ProdGemstoneInstance != null
        assert model.ProdGemstoneInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ProdGemstone/list'

        response.reset()

        populateValidParams(params)
        def ProdGemstone = new Gemstone(params)

        assert ProdGemstone.save() != null
        assert ProdGemstone.count() == 1

        params.id = ProdGemstone.id

        controller.delete()

        assert ProdGemstone.count() == 0
        assert ProdGemstone.get(ProdGemstone.id) == null
        assert response.redirectedUrl == '/ProdGemstone/list'
    }
}
