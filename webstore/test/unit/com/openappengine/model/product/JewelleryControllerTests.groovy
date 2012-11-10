package com.openappengine.model.product



import org.junit.*
import grails.test.mixin.*

@TestFor(JewelleryController)
@Mock(Jewellery)
class JewelleryControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/jewellery/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.jewelleryInstanceList.size() == 0
        assert model.jewelleryInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.jewelleryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.jewelleryInstance != null
        assert view == '/jewellery/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/jewellery/show/1'
        assert controller.flash.message != null
        assert Jewellery.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/jewellery/list'

        populateValidParams(params)
        def jewellery = new Jewellery(params)

        assert jewellery.save() != null

        params.id = jewellery.id

        def model = controller.show()

        assert model.jewelleryInstance == jewellery
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/jewellery/list'

        populateValidParams(params)
        def jewellery = new Jewellery(params)

        assert jewellery.save() != null

        params.id = jewellery.id

        def model = controller.edit()

        assert model.jewelleryInstance == jewellery
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/jewellery/list'

        response.reset()

        populateValidParams(params)
        def jewellery = new Jewellery(params)

        assert jewellery.save() != null

        // test invalid parameters in update
        params.id = jewellery.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/jewellery/edit"
        assert model.jewelleryInstance != null

        jewellery.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/jewellery/show/$jewellery.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        jewellery.clearErrors()

        populateValidParams(params)
        params.id = jewellery.id
        params.version = -1
        controller.update()

        assert view == "/jewellery/edit"
        assert model.jewelleryInstance != null
        assert model.jewelleryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/jewellery/list'

        response.reset()

        populateValidParams(params)
        def jewellery = new Jewellery(params)

        assert jewellery.save() != null
        assert Jewellery.count() == 1

        params.id = jewellery.id

        controller.delete()

        assert Jewellery.count() == 0
        assert Jewellery.get(jewellery.id) == null
        assert response.redirectedUrl == '/jewellery/list'
    }
}
