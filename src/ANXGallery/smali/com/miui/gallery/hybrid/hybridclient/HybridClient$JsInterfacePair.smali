.class public Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;
.super Ljava/lang/Object;
.source "HybridClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/hybrid/hybridclient/HybridClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsInterfacePair"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;->name:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;->obj:Ljava/lang/Object;

    .line 50
    return-void
.end method
