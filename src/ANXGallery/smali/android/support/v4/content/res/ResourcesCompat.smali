.class public final Landroid/support/v4/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# direct methods
.method public static getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 143
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
