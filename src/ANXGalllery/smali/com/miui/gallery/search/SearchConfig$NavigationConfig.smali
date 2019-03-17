.class public Lcom/miui/gallery/search/SearchConfig$NavigationConfig;
.super Ljava/lang/Object;
.source "SearchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/SearchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationConfig"
.end annotation


# instance fields
.field private peopleItemCount:I

.field private recommendItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/SearchConfig$NavigationConfig;->recommendItemCount:I

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/SearchConfig$NavigationConfig;->peopleItemCount:I

    .line 359
    return-void
.end method


# virtual methods
.method public getSectionMaxItemCount(Lcom/miui/gallery/search/SearchConstants$SectionType;)I
    .locals 2
    .param p1, "sectionType"    # Lcom/miui/gallery/search/SearchConstants$SectionType;

    .prologue
    .line 366
    sget-object v0, Lcom/miui/gallery/search/SearchConfig$1;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-virtual {p1}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 372
    :pswitch_0
    const v0, 0x7fffffff

    :goto_0
    return v0

    .line 368
    :pswitch_1
    iget v0, p0, Lcom/miui/gallery/search/SearchConfig$NavigationConfig;->recommendItemCount:I

    goto :goto_0

    .line 370
    :pswitch_2
    iget v0, p0, Lcom/miui/gallery/search/SearchConfig$NavigationConfig;->peopleItemCount:I

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isFatalCondition(I)Z
    .locals 1
    .param p1, "errorStatus"    # I

    .prologue
    .line 395
    sparse-switch p1, :sswitch_data_0

    .line 403
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 401
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 395
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public useBatchContent(Lcom/miui/gallery/search/SearchConstants$SectionType;)Z
    .locals 2
    .param p1, "sectionType"    # Lcom/miui/gallery/search/SearchConstants$SectionType;

    .prologue
    .line 382
    sget-object v0, Lcom/miui/gallery/search/SearchConfig$1;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-virtual {p1}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 390
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 388
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
