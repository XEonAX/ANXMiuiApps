.class Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2$2;
.super Lcom/miui/gallery/threadpool/FutureHandler;
.source "DialogFontMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;->onCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/threadpool/FutureHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2$2;->this$1:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;

    invoke-direct {p0}, Lcom/miui/gallery/threadpool/FutureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/miui/gallery/threadpool/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2$2;->this$1:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;->val$textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->setState(I)V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2$2;->this$1:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;)Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;->notifyDataSetChanged()V

    .line 115
    return-void
.end method
