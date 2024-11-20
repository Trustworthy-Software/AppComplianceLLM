.class public final Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;
.super Ljava/lang/Object;
.source "Database.kt"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/DatabaseKt$childEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/google/firebase/database/DatabaseKt$childEvents$1$listener$1",
        "Lcom/google/firebase/database/ChildEventListener;",
        "onCancelled",
        "",
        "error",
        "Lcom/google/firebase/database/DatabaseError;",
        "onChildAdded",
        "snapshot",
        "Lcom/google/firebase/database/DataSnapshot;",
        "previousChildName",
        "",
        "onChildChanged",
        "onChildMoved",
        "onChildRemoved",
        "com.google.firebase-firebase-database"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "Lcom/google/firebase/database/ChildEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_childEvents:Lcom/google/firebase/database/Query;


# direct methods
.method public static synthetic $r8$lambda$R4yGGB8uWSc5pofB34GvaOS1d8Q(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->onChildChanged$lambda-1(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gC8RqcESTD276ActjS_ruv_-bxQ(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->onChildRemoved$lambda-2(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$md7NKD05G8MDCvJ1dzrzEuomo44(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->onChildAdded$lambda-0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rvNt3K85W39Cw87vVA5eCHZSx88(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->onChildMoved$lambda-3(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/database/Query;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/google/firebase/database/Query;
    .param p2, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/Query;",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lcom/google/firebase/database/ChildEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$this_childEvents:Lcom/google/firebase/database/Query;

    iput-object p2, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onChildAdded$lambda-0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 2
    .param p0, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .param p1, "$snapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "$previousChildName"    # Ljava/lang/String;

    const-string v0, "$$this$callbackFlow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v1, Lcom/google/firebase/database/ChildEvent$Added;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/database/ChildEvent$Added;-><init>(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onChildChanged$lambda-1(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 2
    .param p0, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .param p1, "$snapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "$previousChildName"    # Ljava/lang/String;

    const-string v0, "$$this$callbackFlow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v1, Lcom/google/firebase/database/ChildEvent$Changed;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/database/ChildEvent$Changed;-><init>(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onChildMoved$lambda-3(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 2
    .param p0, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .param p1, "$snapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "$previousChildName"    # Ljava/lang/String;

    const-string v0, "$$this$callbackFlow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v1, Lcom/google/firebase/database/ChildEvent$Moved;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/database/ChildEvent$Moved;-><init>(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onChildRemoved$lambda-2(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 2
    .param p0, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .param p1, "$snapshot"    # Lcom/google/firebase/database/DataSnapshot;

    const-string v0, "$$this$callbackFlow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v1, Lcom/google/firebase/database/ChildEvent$Removed;

    invoke-direct {v1, p1}, Lcom/google/firebase/database/ChildEvent$Removed;-><init>(Lcom/google/firebase/database/DataSnapshot;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 3
    .param p1, "error"    # Lcom/google/firebase/database/DatabaseError;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toException()Lcom/google/firebase/database/DatabaseException;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "Error getting Query childEvent"

    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "previousChildName"    # Ljava/lang/String;

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$this_childEvents:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v2, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "previousChildName"    # Ljava/lang/String;

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$this_childEvents:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v2, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1, p2}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "previousChildName"    # Ljava/lang/String;

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$this_childEvents:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v2, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1, p2}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda2;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 3
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$this_childEvents:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v2, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda3;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method
