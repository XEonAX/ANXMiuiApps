.class Lmiui/widget/AlphabetFastIndexer$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OE:Lmiui/widget/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$3;->OE:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 756
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 758
    :cond_0
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$3;->OE:Lmiui/widget/AlphabetFastIndexer;

    invoke-static {p1}, Lmiui/widget/AlphabetFastIndexer;->c(Lmiui/widget/AlphabetFastIndexer;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 759
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$3;->OE:Lmiui/widget/AlphabetFastIndexer;

    invoke-static {p1}, Lmiui/widget/AlphabetFastIndexer;->c(Lmiui/widget/AlphabetFastIndexer;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 763
    :cond_1
    :goto_0
    return-void
.end method
