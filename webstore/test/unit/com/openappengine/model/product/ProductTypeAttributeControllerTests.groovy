package com.openappengine.model.product



import org.junit.*
import grails.test.mixin.*

@TestFor(ProductTypeAttributeController)
@Mock(ProductTypeAttribute)
class ProductTypeAttributeControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/productTypeAttribute/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.productTypeAttributeInstanceList.size() == 0
        assert model.productTypeAttributeInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.productTypeAttributeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.productTypeAttributeInstance != null
        assert view == '/productTypeAttribute/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/productTypeAttribute/show/1'
        assert controller.flash.message != null
        assert ProductTypeAttribute.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/productTypeAttribute/list'


        populateValidParams(params)
        def productTypeAttribute = new ProductTypeAttribute(params)

        assert productTypeAttribute.save() != null

        params.id = productTypeAttribute.id

        def model = controller.show()

        assert model.productTypeAttributeInstance == productTypeAttribute
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/productTypeAttribute/list'


        populateValidParams(params)
        def productTypeAttribute = new ProductTypeAttribute(params)

        assert productTypeAttribute.save() != null

        params.id = productTypeAttribute.id

        def model = controller.edit()

        assert model.productTypeAttributeInstance == productTypeAttribute
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/productTypeAttribute/list'

        response.reset()


        populateValidParams(params)
        def productTypeAttribute = new ProductTypeAttribute(params)

        assert productTypeAttribute.save() != null

        // test invalid parameters in update
        params.id = productTypeAttribute.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/productTypeAttribute/edit"
        assert model.productTypeAttributeInstance != null

        productTypeAttribute.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/productTypeAttribute/show/$productTypeAttribute.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        productTypeAttribute.clearErrors()

        populateValidParams(params)
        params.id = productTypeAttribute.id
        params.version = -1
        controller.update()

        assert view == "/productTypeAttribute/edit"
        assert model.productTypeAttributeInstance != null
        assert model.productTypeAttributeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/productTypeAttribute/list'

        response.reset()

        populateValidParams(params)
        def productTypeAttribute = new ProductTypeAttribute(params)

        assert productTypeAttribute.save() != null
        assert ProductTypeAttribute.count() == 1

        params.id = productTypeAttribute.id

        controller.delete()

        assert ProductTypeAttribute.count() == 0
        assert ProductTypeAttribute.get(productTypeAttribute.id) == null
        assert response.redirectedUrl == '/productTypeAttribute/list'
    }
}
