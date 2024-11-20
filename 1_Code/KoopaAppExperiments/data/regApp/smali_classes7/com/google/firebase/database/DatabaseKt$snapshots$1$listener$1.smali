.class public final Lcom/google/firebase/database/DatabaseKt$snapshots$1$listener$1;
.super Ljava/lang/Object;
.source "Database.kt"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/DatabaseKt$snapshots$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/google/firebase/database/DatabaseKt$snapshots$1$listener$1",
        "Lcom/google/firebase/database/ValueEventListener;",
        "onCancelled",
        "",
        "error",
        "Lcom/google/firebase/database/DatabaseError;",
        "onDataChange",
        "snapshot",
        "Lcom/google/firebase/database/DataSnapshot;",
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
            "Lcom/google/firebase/database/DataSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_snapshots:Lcom/google/firebase/database/Query;


# direct methods
.method public static synthetic $r8$lambda$AaiTWrdTYx2fLBKlymFKkDYyY0o(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/database/DatabaseKt$snapshots$1$listener$1;->onDataChange$lambda-0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;)V

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
            "Lcom/google/firebase/database/DataSnapshot;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/database/DatabaseKt$snapshots$1$listener$1;->$this_snapshots:Lcom/google/firebase/database/Query;

    iput-object p2, p0, Lcom/google/firebase/database/DatabaseKt$snapshots$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onDataChange$lambda-0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 1
    .param p0, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .param p1, "$snapshot"    # Lcom/google/firebase/database/DataSnapshot;

    const-string v0, "$$this$callbackFlow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 3
    .param p1, "error"    # Lcom/google/firebase/database/DatabaseError;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$snapshots$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toException()Lcom/google/firebase/database/DatabaseException;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "Error getting Query snapshot"

    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 3
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$snapshots$1$listener$1;->$this_snapshots:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseKt$snapshots$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v2, Lcom/google/firebase/database/DatabaseKt$snapshots$1$listener$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/google/firebase/database/DatabaseKt$snapshots$1$listener$1$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method
