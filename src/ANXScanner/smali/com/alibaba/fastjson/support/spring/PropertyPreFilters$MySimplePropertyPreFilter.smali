.class public Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;
.super Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;
.source "PropertyPreFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySimplePropertyPreFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;->this$0:Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;
    .param p3, "properties"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;->this$0:Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;
    .param p2, "properties"    # [Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;->this$0:Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    .line 52
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;-><init>([Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public varargs addExcludes([Ljava/lang/String;)Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;
    .locals 3
    .param p1, "filters"    # [Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;->getExcludes()Ljava/util/Set;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-object p0
.end method

.method public varargs addIncludes([Ljava/lang/String;)Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;
    .locals 3
    .param p1, "filters"    # [Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters$MySimplePropertyPreFilter;->getIncludes()Ljava/util/Set;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-object p0
.end method
