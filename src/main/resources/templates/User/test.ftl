<#import "../Shared/mainLayout.ftl" as layout>
<@layout.MainLayout>
<div class="col-xs-12 col-sm-9 col-md-6">
    <h3>Проверка маршрутизации</h3>
    <div>
        <form name="test" method="POST">
            <div class="form-group">
                <label for="name">Наименование</label>
                <input type="text" name="query" class="form-control" value="roleID = 101, newUI = true,medicalEntityID = All" placeholder="Наименование"/>
            </div>
            <button type="submit" class="btn btn-primary">Получить URL</button>
        </form>
    </div>
    <#if result??>
    <div class="test_result">
        <h3>Парметры запроса: </h3>
        <#list params as param>
        <div>${param}</div>
        </#list>
        <h3>Результат: </h3>
        ${result}
    </div>
    </#if>
</div>
</@layout.MainLayout>