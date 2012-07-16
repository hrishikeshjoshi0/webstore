package com.openappengine.model.product



import org.junit.*

import webstore.product.DiamondController;
import grails.test.mixin.*

@TestFor(DiamondController)
@Mock(ProductDiamond)
class ProductDiamondControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/product_Diamond/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.product_DiamondInstanceList.size() == 0
        assert model.product_DiamondInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.product_DiamondInstance != null
    }

    void testSave() {
        controller.save()

        assert model.product_DiamondInstance != null
        assert view == '/product_Diamond/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/product_Diamond/show/1'
        assert controller.flash.message != null
        assert ProductDiamond.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/product_Diamond/list'


        populateValidParams(params)
        def product_Diamond = new ProductDiamond(params)

        assert product_Diamond.save() != null

        params.id = product_Diamond.id

        def model = controller.show()

        assert model.product_DiamondInstance == product_Diamond
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/product_Diamond/list'


        populateValidParams(params)
        def product_Diamond = new ProductDiamond(params)

        assert product_Diamond.save() != null

        params.id = product_Diamond.id

        def model = controller.edit()

        assert model.product_DiamondInstance == product_Diamond
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/product_Diamond/list'

        response.reset()


        populateValidParams(params)
        def product_Diamond = new ProductDiamond(params)

        assert product_Diamond.save() != null

        // test invalid parameters in update
        params.id = product_Diamond.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/product_Diamond/edit"
        assert model.product_DiamondInstance != null

        product_Diamond.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/product_Diamond/show/$product_Diamond.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        product_Diamond.clearErrors()

        populateValidParams(params)
        params.id = product_Diamond.id
        params.version = -1
        controller.update()

        assert view == "/product_Diamond/edit"
        assert model.product_DiamondInstance != null
        assert model.product_DiamondInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/product_Diamond/list'

        response.reset()

        populateValidParams(params)
        def product_Diamond = new ProductDiamond(params)

        assert product_Diamond.save() != null
        assert ProductDiamond.count() == 1

        params.id = product_Diamond.id

        controller.delete()

        assert ProductDiamond.count() == 0
        assert ProductDiamond.get(product_Diamond.id) == null
        assert response.redirectedUrl == '/product_Diamond/list'
    }
}
