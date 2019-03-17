.class public abstract Lcom/baidu/homework/model/NetworkResult;
.super Ljava/lang/Object;


# static fields
.field public static final STATUS_FREQUENCY_ERROR:I = 0x4

.field public static final STATUS_NETWORK_ERROR:I = 0x1

.field public static final STATUS_PARSE_ERROR:I = 0x3

.field public static final STATUS_SERVER_ERROR:I = 0x2

.field public static final STATUS_SUCCESS:I


# instance fields
.field private status:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/homework/model/NetworkResult;->status:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/baidu/homework/model/NetworkResult;->status:I

    return v0
.end method
