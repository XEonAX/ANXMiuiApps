.class public Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;->d:Z

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;->e:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    return-void
.end method
