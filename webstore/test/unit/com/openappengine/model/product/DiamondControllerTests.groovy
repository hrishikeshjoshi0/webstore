package com.openappengine.model.product



import org.junit.*
import grails.test.mixin.*

@TestFor(DiamondController)
@Mock(Diamond)
class DiamondControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/diamond/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.diamondInstanceList.size() == 0
        assert model.diamondInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.diamondInstance != null
    }

    void testSave() {
        controller.save()

        assert model.diamondInstance != null
        assert view == '/diamond/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/diamond/show/1'
        assert controller.flash.message != null
        assert Diamond.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/diamond/list'


        populateValidParams(params)
        def diamond = new Diamond(params)

        assert diamond.save() != null

        params.id = diamond.id

        def model = controller.show()

        assert model.diamondInstance == diamond
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/diamond/list'


        populateValidParams(params)
        def diamond = new Diamond(params)

        assert diamond.save() != null

        params.id = diamond.id

        def model = controller.edit()

        assert model.diamondInstance == diamond
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/diamond/list'

        response.reset()


        populateValidParams(params)
        def diamond = new Diamond(params)

        assert diamond.save() != null

        // test invalid parameters in update
        params.id = diamond.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/diamond/edit"
        assert model.diamondInstance != null

        diamond.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/diamond/show/$diamond.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        diamond.clearErrors()

        populateValidParams(params)
        params.id = diamond.id
        params.version = -1
        controller.update()

        assert view == "/diamond/edit"
        assert model.diamondInstance != null
        assert model.diamondInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/diamond/list'

        response.reset()

        populateValidParams(params)
        def diamond = new Diamond(params)

        assert diamond.save() != null
        assert Diamond.count() == 1

        params.id = diamond.id

        controller.delete()

        assert Diamond.count() == 0
        assert Diamond.get(diamond.id) == null
        assert response.redirectedUrl == '/diamond/list'
    }
}
