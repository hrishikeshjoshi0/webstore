package com.openappengine.model.product



import org.junit.*
import grails.test.mixin.*

@TestFor(ProductReviewController)
@Mock(ProductReview)
class ProductReviewControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/productReview/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.productReviewInstanceList.size() == 0
        assert model.productReviewInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.productReviewInstance != null
    }

    void testSave() {
        controller.save()

        assert model.productReviewInstance != null
        assert view == '/productReview/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/productReview/show/1'
        assert controller.flash.message != null
        assert ProductReview.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/productReview/list'


        populateValidParams(params)
        def productReview = new ProductReview(params)

        assert productReview.save() != null

        params.id = productReview.id

        def model = controller.show()

        assert model.productReviewInstance == productReview
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/productReview/list'


        populateValidParams(params)
        def productReview = new ProductReview(params)

        assert productReview.save() != null

        params.id = productReview.id

        def model = controller.edit()

        assert model.productReviewInstance == productReview
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/productReview/list'

        response.reset()


        populateValidParams(params)
        def productReview = new ProductReview(params)

        assert productReview.save() != null

        // test invalid parameters in update
        params.id = productReview.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/productReview/edit"
        assert model.productReviewInstance != null

        productReview.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/productReview/show/$productReview.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        productReview.clearErrors()

        populateValidParams(params)
        params.id = productReview.id
        params.version = -1
        controller.update()

        assert view == "/productReview/edit"
        assert model.productReviewInstance != null
        assert model.productReviewInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/productReview/list'

        response.reset()

        populateValidParams(params)
        def productReview = new ProductReview(params)

        assert productReview.save() != null
        assert ProductReview.count() == 1

        params.id = productReview.id

        controller.delete()

        assert ProductReview.count() == 0
        assert ProductReview.get(productReview.id) == null
        assert response.redirectedUrl == '/productReview/list'
    }
}
