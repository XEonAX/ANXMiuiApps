.class public final Landroid/support/v4/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi21Impl;,
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;,
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 111
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 113
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    goto :goto_0
.end method

.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 1
    .param p0, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 184
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method
