.class public Lcom/alibaba/fastjson/support/spring/FastJsonContainer;
.super Ljava/lang/Object;
.source "FastJsonContainer.java"


# instance fields
.field private filters:Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;->value:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public getFilters()Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;->filters:Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setFilters(Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;)V
    .locals 0
    .param p1, "filters"    # Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;->filters:Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    .line 30
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;->value:Ljava/lang/Object;

    .line 22
    return-void
.end method
