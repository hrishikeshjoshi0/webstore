package com.openappengine.seo



import org.junit.*
import grails.test.mixin.*

@TestFor(KeywordsController)
@Mock(Keywords)
class KeywordsControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/keywords/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.keywordsInstanceList.size() == 0
        assert model.keywordsInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.keywordsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.keywordsInstance != null
        assert view == '/keywords/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/keywords/show/1'
        assert controller.flash.message != null
        assert Keywords.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/keywords/list'

        populateValidParams(params)
        def keywords = new Keywords(params)

        assert keywords.save() != null

        params.id = keywords.id

        def model = controller.show()

        assert model.keywordsInstance == keywords
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/keywords/list'

        populateValidParams(params)
        def keywords = new Keywords(params)

        assert keywords.save() != null

        params.id = keywords.id

        def model = controller.edit()

        assert model.keywordsInstance == keywords
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/keywords/list'

        response.reset()

        populateValidParams(params)
        def keywords = new Keywords(params)

        assert keywords.save() != null

        // test invalid parameters in update
        params.id = keywords.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/keywords/edit"
        assert model.keywordsInstance != null

        keywords.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/keywords/show/$keywords.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        keywords.clearErrors()

        populateValidParams(params)
        params.id = keywords.id
        params.version = -1
        controller.update()

        assert view == "/keywords/edit"
        assert model.keywordsInstance != null
        assert model.keywordsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/keywords/list'

        response.reset()

        populateValidParams(params)
        def keywords = new Keywords(params)

        assert keywords.save() != null
        assert Keywords.count() == 1

        params.id = keywords.id

        controller.delete()

        assert Keywords.count() == 0
        assert Keywords.get(keywords.id) == null
        assert response.redirectedUrl == '/keywords/list'
    }
}
