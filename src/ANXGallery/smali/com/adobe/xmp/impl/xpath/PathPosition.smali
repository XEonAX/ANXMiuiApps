.class Lcom/adobe/xmp/impl/xpath/PathPosition;
.super Ljava/lang/Object;
.source "XMPPathParser.java"


# instance fields
.field nameEnd:I

.field nameStart:I

.field public path:Ljava/lang/String;

.field stepBegin:I

.field stepEnd:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    .line 529
    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 531
    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    .line 533
    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    .line 535
    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    return-void
.end method
