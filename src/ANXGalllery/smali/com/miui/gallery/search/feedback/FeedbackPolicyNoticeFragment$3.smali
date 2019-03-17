.class Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$3;
.super Ljava/lang/Object;
.source "FeedbackPolicyNoticeFragment.java"

# interfaces
.implements Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->buildUserNotice(Landroid/app/Activity;II)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$3;->this$0:Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    iput-object p2, p0, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->goToFeedbackPolicyPage(Landroid/app/Activity;)V

    .line 79
    return-void
.end method
