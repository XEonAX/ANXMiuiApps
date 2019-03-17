.class public Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlibcUserTrackerResult"
.end annotation


# static fields
.field public static final UT_INIT_AD:I = 0x2

.field public static final UT_INIT_FAIL:I = 0x1

.field public static final UT_INIT_SUCCESS:I = 0x0

.field public static final UT_INIT_THIRD_FAIL:I = 0x3


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public result:I


# direct methods
.method public constructor <init>(Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;)V
    .locals 1

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;->a:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;->result:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;I)V
    .locals 1

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;->a:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;->result:I

    iput p2, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;->result:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;->a:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;->result:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;->result:I

    iput p2, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;->errorCode:I

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;->errorMessage:Ljava/lang/String;

    return-void
.end method
