.class Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "BaseResourceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;->onRequestSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
