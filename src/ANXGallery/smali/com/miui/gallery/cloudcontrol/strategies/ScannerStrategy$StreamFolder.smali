.class public Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFolder;
.super Ljava/lang/Object;
.source "ScannerStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamFolder"
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "path"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFolder;->mPath:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFolder;->mPath:Ljava/lang/String;

    return-object v0
.end method
