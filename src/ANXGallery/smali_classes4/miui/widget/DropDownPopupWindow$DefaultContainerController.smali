.class public Lmiui/widget/DropDownPopupWindow$DefaultContainerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/DropDownPopupWindow$ContainerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultContainerController"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddContent(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 169
    const/4 p1, 0x0

    return p1
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .locals 1

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 163
    if-eqz p1, :cond_0

    .line 164
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 158
    return-void
.end method

.method public onShow()V
    .locals 0

    .line 153
    return-void
.end method
