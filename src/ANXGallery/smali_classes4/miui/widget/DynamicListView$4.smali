.class Lmiui/widget/DynamicListView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private SF:I

.field final synthetic Sr:Lmiui/widget/DynamicListView;

.field private Sw:I

.field private Sx:I

.field private Sy:I

.field private Sz:I


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/DynamicListView$4;->Sw:I

    .line 206
    iput p1, p0, Lmiui/widget/DynamicListView$4;->Sx:I

    return-void
.end method

.method private eM()V
    .locals 1

    .line 255
    iget v0, p0, Lmiui/widget/DynamicListView$4;->Sz:I

    if-lez v0, :cond_1

    iget v0, p0, Lmiui/widget/DynamicListView$4;->SF:I

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->f(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->c(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->g(Lmiui/widget/DynamicListView;)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->h(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->i(Lmiui/widget/DynamicListView;)V

    .line 263
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public eN()V
    .locals 4

    .line 271
    iget v0, p0, Lmiui/widget/DynamicListView$4;->Sy:I

    iget v1, p0, Lmiui/widget/DynamicListView$4;->Sw:I

    if-eq v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->f(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v1}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmiui/widget/DynamicListView;->d(Lmiui/widget/DynamicListView;J)V

    .line 274
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->j(Lmiui/widget/DynamicListView;)V

    .line 277
    :cond_0
    return-void
.end method

.method public eO()V
    .locals 4

    .line 285
    iget v0, p0, Lmiui/widget/DynamicListView$4;->Sy:I

    iget v1, p0, Lmiui/widget/DynamicListView$4;->Sz:I

    add-int/2addr v0, v1

    .line 287
    iget v1, p0, Lmiui/widget/DynamicListView$4;->Sw:I

    iget v2, p0, Lmiui/widget/DynamicListView$4;->Sx:I

    add-int/2addr v1, v2

    .line 289
    if-eq v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->f(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v1}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmiui/widget/DynamicListView;->d(Lmiui/widget/DynamicListView;J)V

    .line 292
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->j(Lmiui/widget/DynamicListView;)V

    .line 295
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 217
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    .line 219
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 222
    :cond_0
    iput p2, p0, Lmiui/widget/DynamicListView$4;->Sy:I

    .line 223
    iput p3, p0, Lmiui/widget/DynamicListView$4;->Sz:I

    .line 224
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sw:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 225
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sy:I

    goto :goto_0

    .line 226
    :cond_1
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sw:I

    :goto_0
    iput p1, p0, Lmiui/widget/DynamicListView$4;->Sw:I

    .line 227
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sx:I

    if-ne p1, p2, :cond_2

    .line 228
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sz:I

    goto :goto_1

    .line 229
    :cond_2
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sx:I

    :goto_1
    iput p1, p0, Lmiui/widget/DynamicListView$4;->Sx:I

    .line 230
    invoke-virtual {p0}, Lmiui/widget/DynamicListView$4;->eN()V

    .line 231
    invoke-virtual {p0}, Lmiui/widget/DynamicListView$4;->eO()V

    .line 232
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sy:I

    iput p1, p0, Lmiui/widget/DynamicListView$4;->Sw:I

    .line 233
    iget p1, p0, Lmiui/widget/DynamicListView$4;->Sz:I

    iput p1, p0, Lmiui/widget/DynamicListView$4;->Sx:I

    .line 234
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 238
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 241
    :cond_0
    iput p2, p0, Lmiui/widget/DynamicListView$4;->SF:I

    .line 242
    iget-object p1, p0, Lmiui/widget/DynamicListView$4;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {p1, p2}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;I)I

    .line 243
    invoke-direct {p0}, Lmiui/widget/DynamicListView$4;->eM()V

    .line 244
    return-void
.end method
