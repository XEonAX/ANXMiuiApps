.class public Lmiui/util/ResourceMapper;
.super Ljava/lang/Object;
.source "ResourceMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveReference(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 8
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 9
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 10
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    return v1
.end method
