.class public Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;
.super Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$Option;
.source "nexEffectOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorOpt"
.end annotation


# instance fields
.field protected argb_color:I

.field protected default_argb_color:I

.field final synthetic this$0:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;


# direct methods
.method private constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;)V
    .locals 1

    .prologue
    .line 426
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->this$0:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$Option;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$1;)V

    return-void
.end method

.method protected constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 427
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->this$0:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    .line 428
    invoke-direct {p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$Option;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {p4}, Lcom/nexstreaming/app/common/util/c;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->argb_color:I

    .line 430
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->argb_color:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->default_argb_color:I

    .line 431
    return-void
.end method


# virtual methods
.method public getARGBformat()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->argb_color:I

    return v0
.end method

.method public setARGBColor(I)V
    .locals 2

    .prologue
    .line 457
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->argb_color:I

    if-eq v0, p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->this$0:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;->access$102(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;Z)Z

    .line 460
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->argb_color:I

    .line 461
    return-void
.end method
