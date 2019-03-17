.class public final Lcom/miui/gallery/editor/photo/core/RenderScript$Dispatcher;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dispatcher"
.end annotation


# instance fields
.field private mTranslators:[Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/Effect;->values()[Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/RenderScript$Dispatcher;->mTranslators:[Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;

    .line 32
    return-void
.end method
