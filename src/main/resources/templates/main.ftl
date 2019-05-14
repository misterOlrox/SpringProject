<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div>
        <@l.logout />
        <span><a href="/user">User list</a></span>
    </div>



    <div>
        <form method="post" enctype="multipart/form-data">
            <input type="text" id="text" name="text" placeholder="Введите сообщение"/>
            <input type="text" id="tag" name="tag" placeholder="Тег" />
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="file" name="file" >
            <button type="submit">Добавить</button>
        </form>
    </div>


    <div>Список сообщений</div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter?ifExists}"/>
        <button type="submit">Найти</button>
    </form>

    <#list messages as message>
            <div>
                <b>${message.id}</b>
                <span>${message.text}</span>
                <i>${message.tag}</i>
                <strong>${message.authorName}</strong>
                <div>
                    <#if message.filename??> <!-- приведение к булевому типу -->
                        <img src="/img/${message.filename}"/>
                    </#if>
                </div>
            </div>
        <#else>
        No messages
    </#list>

</@c.page>