.class public Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;
.super Ljava/lang/Object;
.source "AbstractNaviFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NavigatorData"
.end annotation


# instance fields
.field public final effect:Lcom/miui/gallery/editor/photo/core/Effect;

.field public final icon:I

.field public final isPlugin:Z

.field public final name:I

.field public final pluginModuleName:Ljava/lang/String;


# direct methods
.method constructor <init>(IILcom/miui/gallery/editor/photo/core/Effect;)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "name"    # I
    .param p3, "effect"    # Lcom/miui/gallery/editor/photo/core/Effect;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method constructor <init>(IILcom/miui/gallery/editor/photo/core/Effect;Ljava/lang/String;)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "name"    # I
    .param p3, "effect"    # Lcom/miui/gallery/editor/photo/core/Effect;
    .param p4, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->icon:I

    .line 199
    iput p2, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->name:I

    .line 200
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->effect:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 201
    iput-object p4, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->pluginModuleName:Ljava/lang/String;

    .line 202
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->isPlugin:Z

    .line 203
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
