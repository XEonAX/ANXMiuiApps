.class Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;
.super Ljava/lang/Object;
.source "SlideShowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/SlideShowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadItem"
.end annotation


# instance fields
.field private mIndex:I

.field private mSecretKey:[B

.field private mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/adapter/SlideShowAdapter;Ljava/lang/String;I[B)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "secretKey"    # [B

    .prologue
    .line 239
    iput-object p1, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->mUri:Ljava/lang/String;

    .line 241
    iput p3, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->mIndex:I

    .line 242
    iput-object p4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->mSecretKey:[B

    .line 243
    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;

    .prologue
    .line 234
    iget v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->mIndex:I

    return v0
.end method


# virtual methods
.method public getSecretKey()[B
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->mSecretKey:[B

    return-object v0
.end method

.method public isSecret()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->mSecretKey:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;->mSecretKey:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
