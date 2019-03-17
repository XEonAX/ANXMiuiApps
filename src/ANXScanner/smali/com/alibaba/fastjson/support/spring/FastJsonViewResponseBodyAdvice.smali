.class public Lcom/alibaba/fastjson/support/spring/FastJsonViewResponseBodyAdvice;
.super Ljava/lang/Object;
.source "FastJsonViewResponseBodyAdvice.java"

# interfaces
.implements Lorg/springframework/web/servlet/mvc/method/annotation/ResponseBodyAdvice;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/springframework/web/servlet/mvc/method/annotation/ResponseBodyAdvice",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/springframework/core/annotation/Order;
.end annotation

.annotation runtime Lorg/springframework/web/bind/annotation/ControllerAdvice;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOrCreateContainer(Ljava/lang/Object;)Lcom/alibaba/fastjson/support/spring/FastJsonContainer;
    .locals 1
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 38
    instance-of v0, p1, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    .end local p1    # "body":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "body":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public beforeBodyWrite(Ljava/lang/Object;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/MediaType;Ljava/lang/Class;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Lcom/alibaba/fastjson/support/spring/FastJsonContainer;
    .locals 6
    .param p1, "body"    # Ljava/lang/Object;
    .param p2, "returnType"    # Lorg/springframework/core/MethodParameter;
    .param p3, "selectedContentType"    # Lorg/springframework/http/MediaType;
    .param p5, "request"    # Lorg/springframework/http/server/ServerHttpRequest;
    .param p6, "response"    # Lorg/springframework/http/server/ServerHttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/springframework/core/MethodParameter;",
            "Lorg/springframework/http/MediaType;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;",
            "Lorg/springframework/http/server/ServerHttpRequest;",
            "Lorg/springframework/http/server/ServerHttpResponse;",
            ")",
            "Lcom/alibaba/fastjson/support/spring/FastJsonContainer;"
        }
    .end annotation

    .prologue
    .line 32
    .local p4, "selectedConverterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonViewResponseBodyAdvice;->getOrCreateContainer(Ljava/lang/Object;)Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    move-result-object v1

    .local v1, "container":Lcom/alibaba/fastjson/support/spring/FastJsonContainer;
    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    .line 33
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/support/spring/FastJsonViewResponseBodyAdvice;->beforeBodyWriteInternal(Lcom/alibaba/fastjson/support/spring/FastJsonContainer;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V

    .line 34
    return-object v1
.end method

.method public bridge synthetic beforeBodyWrite(Ljava/lang/Object;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/MediaType;Ljava/lang/Class;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson/support/spring/FastJsonViewResponseBodyAdvice;->beforeBodyWrite(Ljava/lang/Object;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/MediaType;Ljava/lang/Class;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    move-result-object v0

    return-object v0
.end method

.method protected beforeBodyWriteInternal(Lcom/alibaba/fastjson/support/spring/FastJsonContainer;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V
    .locals 10
    .param p1, "container"    # Lcom/alibaba/fastjson/support/spring/FastJsonContainer;
    .param p2, "contentType"    # Lorg/springframework/http/MediaType;
    .param p3, "returnType"    # Lorg/springframework/core/MethodParameter;
    .param p4, "request"    # Lorg/springframework/http/server/ServerHttpRequest;
    .param p5, "response"    # Lorg/springframework/http/server/ServerHttpResponse;

    .prologue
    const/4 v6, 0x0

    .line 44
    const-class v5, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;

    invoke-virtual {p3, v5}, Lorg/springframework/core/MethodParameter;->getMethodAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;

    .line 46
    .local v0, "annotation":Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;
    invoke-interface {v0}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->include()[Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;

    move-result-object v3

    .line 47
    .local v3, "include":[Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;
    invoke-interface {v0}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;->exclude()[Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;

    move-result-object v1

    .line 48
    .local v1, "exclude":[Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;
    new-instance v2, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    invoke-direct {v2}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;-><init>()V

    .line 49
    .local v2, "filters":Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v4, v3, v5

    .line 50
    .local v4, "item":Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;
    invoke-interface {v4}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;->clazz()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v4}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;->props()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->addFilter(Ljava/lang/Class;[Ljava/lang/String;)Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;

    .line 49
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 52
    .end local v4    # "item":Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;
    :cond_0
    array-length v7, v1

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v4, v1, v5

    .line 53
    .restart local v4    # "item":Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;
    invoke-interface {v4}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;->clazz()Ljava/lang/Class;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->addFilter(Ljava/lang/Class;[Ljava/lang/String;)Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;

    move-result-object v8

    invoke-interface {v4}, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;->props()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;->addExcludes([Ljava/lang/String;)Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 55
    .end local v4    # "item":Lcom/alibaba/fastjson/support/spring/annotation/FastJsonFilter;
    :cond_1
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;->setFilters(Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;)V

    .line 56
    return-void
.end method

.method public supports(Lorg/springframework/core/MethodParameter;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "returnType"    # Lorg/springframework/core/MethodParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/core/MethodParameter;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;)Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "converterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    const-class v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alibaba/fastjson/support/spring/annotation/FastJsonView;

    invoke-virtual {p1, v0}, Lorg/springframework/core/MethodParameter;->hasMethodAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
