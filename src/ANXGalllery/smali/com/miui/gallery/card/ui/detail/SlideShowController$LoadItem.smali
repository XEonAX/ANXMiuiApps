.class Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;
.super Ljava/lang/Object;
.source "SlideShowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/SlideShowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadItem"
.end annotation


# instance fields
.field private final mIndex:I

.field private final mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/card/ui/detail/SlideShowController;Ljava/lang/String;I)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 338
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p2, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;->mUri:Ljava/lang/String;

    .line 340
    iput p3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;->mIndex:I

    .line 341
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;

    .prologue
    .line 334
    iget v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;->mIndex:I

    return v0
.end method
