.class public final Lcom/google/firebase/firestore/util/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field private static final ASYNC_THREAD_POOL_MAXIMUM_CONCURRENCY:I = 0x4

.field public static final BACKGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/google/firebase/firestore/util/Executors;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 39
    new-instance v0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 42
    new-instance v0, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;

    const/4 v1, 0x4

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;-><init>(ILjava/util/concurrent/Executor;)V

    sput-object v0, Lcom/google/firebase/firestore/util/Executors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method
