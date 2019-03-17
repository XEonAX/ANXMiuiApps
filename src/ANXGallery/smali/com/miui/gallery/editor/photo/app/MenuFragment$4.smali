.class final Lcom/miui/gallery/editor/photo/app/MenuFragment$4;
.super Landroid/util/Property;
.source "MenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/MenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 231
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Landroid/view/View;

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment$4;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/view/View;Ljava/lang/Float;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 235
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 236
    .local v0, "bottom":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v1, v3

    .line 237
    .local v1, "height":F
    sub-float v3, v0, v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 238
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 231
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment$4;->set(Landroid/view/View;Ljava/lang/Float;)V

    return-void
.end method
