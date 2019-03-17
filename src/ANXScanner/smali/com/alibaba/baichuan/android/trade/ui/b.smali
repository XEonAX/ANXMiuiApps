.class Lcom/alibaba/baichuan/android/trade/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/ui/b;->a:Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/b;->a:Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->onBackPressed()V

    return-void
.end method
