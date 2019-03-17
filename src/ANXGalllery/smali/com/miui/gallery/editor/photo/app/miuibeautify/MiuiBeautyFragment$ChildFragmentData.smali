.class Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;
.super Ljava/lang/Object;
.source "MiuiBeautyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildFragmentData"
.end annotation


# instance fields
.field final beautyEffect:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

.field final menu:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;)V
    .locals 0
    .param p2, "effect"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;",
            ">;",
            "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "_class":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;->menu:Ljava/lang/Class;

    .line 356
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;->beautyEffect:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    .line 357
    return-void
.end method


# virtual methods
.method public newMenu()Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;
    .locals 5

    .prologue
    .line 361
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;->menu:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;

    .line 362
    .local v1, "childMenuFragment":Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "BEAUTY_EFFECT"

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;->beautyEffect:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 364
    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    return-object v1

    .line 366
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "childMenuFragment":Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;
    :catch_0
    move-exception v2

    .line 367
    .local v2, "e":Ljava/lang/InstantiationException;
    const-string v3, "MiuiBeautyFragment"

    invoke-static {v3, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 369
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "MiuiBeautyFragment"

    invoke-static {v3, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
