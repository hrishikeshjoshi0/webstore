package com.order



import org.junit.*
import grails.test.mixin.*

@TestFor(OrderHeaderController)
@Mock(OrderHeader)
class OrderHeaderControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/orderHeader/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.orderHeaderInstanceList.size() == 0
        assert model.orderHeaderInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.orderHeaderInstance != null
    }

    void testSave() {
        controller.save()

        assert model.orderHeaderInstance != null
        assert view == '/orderHeader/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/orderHeader/show/1'
        assert controller.flash.message != null
        assert OrderHeader.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/orderHeader/list'

        populateValidParams(params)
        def orderHeader = new OrderHeader(params)

        assert orderHeader.save() != null

        params.id = orderHeader.id

        def model = controller.show()

        assert model.orderHeaderInstance == orderHeader
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/orderHeader/list'

        populateValidParams(params)
        def orderHeader = new OrderHeader(params)

        assert orderHeader.save() != null

        params.id = orderHeader.id

        def model = controller.edit()

        assert model.orderHeaderInstance == orderHeader
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/orderHeader/list'

        response.reset()

        populateValidParams(params)
        def orderHeader = new OrderHeader(params)

        assert orderHeader.save() != null

        // test invalid parameters in update
        params.id = orderHeader.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/orderHeader/edit"
        assert model.orderHeaderInstance != null

        orderHeader.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/orderHeader/show/$orderHeader.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        orderHeader.clearErrors()

        populateValidParams(params)
        params.id = orderHeader.id
        params.version = -1
        controller.update()

        assert view == "/orderHeader/edit"
        assert model.orderHeaderInstance != null
        assert model.orderHeaderInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/orderHeader/list'

        response.reset()

        populateValidParams(params)
        def orderHeader = new OrderHeader(params)

        assert orderHeader.save() != null
        assert OrderHeader.count() == 1

        params.id = orderHeader.id

        controller.delete()

        assert OrderHeader.count() == 0
        assert OrderHeader.get(orderHeader.id) == null
        assert response.redirectedUrl == '/orderHeader/list'
    }
}
