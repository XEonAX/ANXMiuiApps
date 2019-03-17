.class final Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerHeap"
.end annotation


# instance fields
.field private DEFAULT_HEAP_SIZE:I

.field private deletedCancelledNumber:I

.field private size:I

.field private timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/16 v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->DEFAULT_HEAP_SIZE:I

    .line 145
    iget v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->DEFAULT_HEAP_SIZE:I

    new-array v0, v0, [Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    iput-object v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    .line 147
    iput v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    .line 149
    iput v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->deletedCancelledNumber:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/service/JobScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaomi/push/service/JobScheduler$1;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;Lcom/xiaomi/push/service/JobScheduler$TaskWraper;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;
    .param p1, "x1"    # Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->getTask(Lcom/xiaomi/push/service/JobScheduler$TaskWraper;)I

    move-result v0

    return v0
.end method

.method private downHeap(I)V
    .locals 8
    .param p1, "pos"    # I

    .prologue
    .line 231
    move v1, p1

    .line 232
    .local v1, "current":I
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v0, v3, 0x1

    .line 234
    .local v0, "child":I
    :goto_0
    iget v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    if-ge v0, v3, :cond_1

    iget v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    if-lez v3, :cond_1

    .line 236
    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget-wide v4, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    iget-object v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v3, v3, v0

    iget-wide v6, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 238
    add-int/lit8 v0, v0, 0x1

    .line 242
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v3, v3, v1

    iget-wide v4, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    iget-object v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v3, v3, v0

    iget-wide v6, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 255
    :cond_1
    return-void

    .line 247
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v2, v3, v1

    .line 248
    .local v2, "tmp":Lcom/xiaomi/push/service/JobScheduler$TaskWraper;
    iget-object v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    iget-object v4, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 249
    iget-object v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aput-object v2, v3, v0

    .line 252
    move v1, v0

    .line 253
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v0, v3, 0x1

    .line 254
    goto :goto_0
.end method

.method private getTask(Lcom/xiaomi/push/service/JobScheduler$TaskWraper;)I
    .locals 2
    .param p1, "task"    # Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    .prologue
    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 283
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 278
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private upHeap()V
    .locals 8

    .prologue
    .line 215
    iget v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    add-int/lit8 v0, v3, -0x1

    .line 216
    .local v0, "current":I
    add-int/lit8 v3, v0, -0x1

    div-int/lit8 v1, v3, 0x2

    .line 218
    .local v1, "parent":I
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v3, v3, v0

    iget-wide v4, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    iget-object v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v3, v3, v1

    iget-wide v6, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v2, v3, v0

    .line 221
    .local v2, "tmp":Lcom/xiaomi/push/service/JobScheduler$TaskWraper;
    iget-object v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    iget-object v4, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 222
    iget-object v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aput-object v2, v3, v1

    .line 225
    move v0, v1

    .line 226
    add-int/lit8 v3, v0, -0x1

    div-int/lit8 v1, v3, 0x2

    .line 227
    goto :goto_0

    .line 228
    .end local v2    # "tmp":Lcom/xiaomi/push/service/JobScheduler$TaskWraper;
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 207
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    if-ge p1, v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    iget v2, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 209
    iget-object v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    iget v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 210
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->downHeap(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public deleteIfCancelled()V
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    if-ge v0, v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->cancelled:Z

    if-eqz v1, :cond_0

    .line 269
    iget v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->deletedCancelledNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->deletedCancelledNumber:I

    .line 270
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->delete(I)V

    .line 272
    add-int/lit8 v0, v0, -0x1

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    return-void
.end method

.method public hasJob(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->type:I

    if-ne v1, p1, :cond_0

    .line 172
    const/4 v1, 0x1

    .line 175
    :goto_1
    return v1

    .line 170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public insert(Lcom/xiaomi/push/service/JobScheduler$TaskWraper;)V
    .locals 4
    .param p1, "task"    # Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    array-length v1, v1

    iget v2, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    if-ne v1, v2, :cond_0

    .line 161
    iget v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    .line 162
    .local v0, "appendedTimers":[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    iget v2, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iput-object v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    .line 165
    .end local v0    # "appendedTimers":[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    iget v2, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    aput-object p1, v1, v2

    .line 166
    invoke-direct {p0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->upHeap()V

    .line 167
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minimum()Lcom/xiaomi/push/service/JobScheduler$TaskWraper;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public removeJobs(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->type:I

    if-ne v1, p1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->cancel()Z

    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->deleteIfCancelled()V

    .line 185
    return-void
.end method

.method public removeJobs(ILcom/xiaomi/push/service/JobScheduler$Job;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "job"    # Lcom/xiaomi/push/service/JobScheduler$Job;

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    if-ge v0, v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->job:Lcom/xiaomi/push/service/JobScheduler$Job;

    if-ne v1, p2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->cancel()Z

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->deleteIfCancelled()V

    .line 203
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->DEFAULT_HEAP_SIZE:I

    new-array v0, v0, [Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    iput-object v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->timers:[Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->size:I

    .line 260
    return-void
.end method
