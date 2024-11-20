.class Lcom/google/firebase/concurrent/CustomThreadFactory;
.super Ljava/lang/Object;
.source "CustomThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static final DEFAULT:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final namePrefix:Ljava/lang/String;

.field private final policy:Landroid/os/StrictMode$ThreadPolicy;

.field private final priority:I

.field private final threadCount:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/concurrent/CustomThreadFactory;->DEFAULT:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 1
    .param p1, "namePrefix"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "policy"    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/concurrent/CustomThreadFactory;->threadCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 33
    iput-object p1, p0, Lcom/google/firebase/concurrent/CustomThreadFactory;->namePrefix:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/google/firebase/concurrent/CustomThreadFactory;->priority:I

    .line 35
    iput-object p3, p0, Lcom/google/firebase/concurrent/CustomThreadFactory;->policy:Landroid/os/StrictMode$ThreadPolicy;

    .line 36
    return-void
.end method


# virtual methods
.method synthetic lambda$newThread$0$com-google-firebase-concurrent-CustomThreadFactory(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 43
    iget v0, p0, Lcom/google/firebase/concurrent/CustomThreadFactory;->priority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 44
    iget-object v0, p0, Lcom/google/firebase/concurrent/CustomThreadFactory;->policy:Landroid/os/StrictMode$ThreadPolicy;

    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 47
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 48
    return-void
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 40
    sget-object v0, Lcom/google/firebase/concurrent/CustomThreadFactory;->DEFAULT:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Lcom/google/firebase/concurrent/CustomThreadFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/concurrent/CustomThreadFactory$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/concurrent/CustomThreadFactory;Ljava/lang/Runnable;)V

    .line 41
    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 49
    .local v0, "thread":Ljava/lang/Thread;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v2, p0, Lcom/google/firebase/concurrent/CustomThreadFactory;->namePrefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/concurrent/CustomThreadFactory;->threadCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s Thread #%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 51
    return-object v0
.end method
