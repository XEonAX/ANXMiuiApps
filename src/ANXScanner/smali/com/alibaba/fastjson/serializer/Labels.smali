.class public Lcom/alibaba/fastjson/serializer/Labels;
.super Ljava/lang/Object;
.source "Labels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs excludes([Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/LabelFilter;
    .locals 2
    .param p0, "views"    # [Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs includes([Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/LabelFilter;
    .locals 2
    .param p0, "views"    # [Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
