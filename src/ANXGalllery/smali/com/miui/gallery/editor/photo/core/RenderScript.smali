.class public Lcom/miui/gallery/editor/photo/core/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;,
        Lcom/miui/gallery/editor/photo/core/RenderScript$Type;,
        Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty;,
        Lcom/miui/gallery/editor/photo/core/RenderScript$Dispatcher;
    }
.end annotation


# static fields
.field public static final DISPATCHER:Lcom/miui/gallery/editor/photo/core/RenderScript$Dispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/miui/gallery/editor/photo/core/RenderScript$Dispatcher;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/RenderScript$Dispatcher;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/RenderScript;->DISPATCHER:Lcom/miui/gallery/editor/photo/core/RenderScript$Dispatcher;

    return-void
.end method
