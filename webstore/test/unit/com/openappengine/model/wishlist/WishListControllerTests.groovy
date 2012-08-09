package com.openappengine.model.wishlist



import org.junit.*
import grails.test.mixin.*

@TestFor(WishListController)
@Mock(WishList)
class WishListControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/wishList/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.wishListInstanceList.size() == 0
        assert model.wishListInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.wishListInstance != null
    }

    void testSave() {
        controller.save()

        assert model.wishListInstance != null
        assert view == '/wishList/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/wishList/show/1'
        assert controller.flash.message != null
        assert WishList.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/wishList/list'


        populateValidParams(params)
        def wishList = new WishList(params)

        assert wishList.save() != null

        params.id = wishList.id

        def model = controller.show()

        assert model.wishListInstance == wishList
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/wishList/list'


        populateValidParams(params)
        def wishList = new WishList(params)

        assert wishList.save() != null

        params.id = wishList.id

        def model = controller.edit()

        assert model.wishListInstance == wishList
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/wishList/list'

        response.reset()


        populateValidParams(params)
        def wishList = new WishList(params)

        assert wishList.save() != null

        // test invalid parameters in update
        params.id = wishList.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/wishList/edit"
        assert model.wishListInstance != null

        wishList.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/wishList/show/$wishList.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        wishList.clearErrors()

        populateValidParams(params)
        params.id = wishList.id
        params.version = -1
        controller.update()

        assert view == "/wishList/edit"
        assert model.wishListInstance != null
        assert model.wishListInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/wishList/list'

        response.reset()

        populateValidParams(params)
        def wishList = new WishList(params)

        assert wishList.save() != null
        assert WishList.count() == 1

        params.id = wishList.id

        controller.delete()

        assert WishList.count() == 0
        assert WishList.get(wishList.id) == null
        assert response.redirectedUrl == '/wishList/list'
    }
}
