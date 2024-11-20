.class public final Lcom/google/firebase/database/DatabaseKt;
.super Ljava/lang/Object;
.source "Database.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Database.kt\ncom/google/firebase/database/DatabaseKt\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,138:1\n47#2:139\n49#2:143\n50#3:140\n55#3:142\n106#4:141\n*S KotlinDebug\n*F\n+ 1 Database.kt\ncom/google/firebase/database/DatabaseKt\n*L\n130#1:139\n130#1:143\n130#1:140\n130#1:142\n130#1:141\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u001a\u0012\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000f\u001a\u001a\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011\u001a\u0012\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0011\u001a\u001c\u0010\u0012\u001a\u0004\u0018\u0001H\u0013\"\u0006\u0008\u0000\u0010\u0013\u0018\u0001*\u00020\u000cH\u0086\u0008\u00a2\u0006\u0002\u0010\u0014\u001a\u001c\u0010\u0012\u001a\u0004\u0018\u0001H\u0013\"\u0006\u0008\u0000\u0010\u0013\u0018\u0001*\u00020\u0015H\u0086\u0008\u00a2\u0006\u0002\u0010\u0016\u001a!\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00130\u0001\"\n\u0008\u0000\u0010\u0013\u0018\u0001*\u00020\u0018*\u00020\u0003H\u0086\u0008\"\u001b\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\"\u0015\u0010\u0006\u001a\u00020\u0007*\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\"\u001b\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u0005\u00a8\u0006\u0019"
    }
    d2 = {
        "childEvents",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/google/firebase/database/ChildEvent;",
        "Lcom/google/firebase/database/Query;",
        "getChildEvents",
        "(Lcom/google/firebase/database/Query;)Lkotlinx/coroutines/flow/Flow;",
        "database",
        "Lcom/google/firebase/database/FirebaseDatabase;",
        "Lcom/google/firebase/Firebase;",
        "getDatabase",
        "(Lcom/google/firebase/Firebase;)Lcom/google/firebase/database/FirebaseDatabase;",
        "snapshots",
        "Lcom/google/firebase/database/DataSnapshot;",
        "getSnapshots",
        "app",
        "Lcom/google/firebase/FirebaseApp;",
        "url",
        "",
        "getValue",
        "T",
        "(Lcom/google/firebase/database/DataSnapshot;)Ljava/lang/Object;",
        "Lcom/google/firebase/database/MutableData;",
        "(Lcom/google/firebase/database/MutableData;)Ljava/lang/Object;",
        "values",
        "",
        "com.google.firebase-firebase-database"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final database(Lcom/google/firebase/Firebase;Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 2
    .param p0, "$this$database"    # Lcom/google/firebase/Firebase;
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "getInstance(app)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final database(Lcom/google/firebase/Firebase;Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 2
    .param p0, "$this$database"    # Lcom/google/firebase/Firebase;
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p1, p2}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "getInstance(app, url)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final database(Lcom/google/firebase/Firebase;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 2
    .param p0, "$this$database"    # Lcom/google/firebase/Firebase;
    .param p1, "url"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "getInstance(url)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getChildEvents(Lcom/google/firebase/database/Query;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0, "$this$childEvents"    # Lcom/google/firebase/database/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/Query;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/google/firebase/database/ChildEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/google/firebase/database/DatabaseKt$childEvents$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/database/DatabaseKt$childEvents$1;-><init>(Lcom/google/firebase/database/Query;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 121
    return-object v0
.end method

.method public static final getDatabase(Lcom/google/firebase/Firebase;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 2
    .param p0, "$this$database"    # Lcom/google/firebase/Firebase;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getSnapshots(Lcom/google/firebase/database/Query;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0, "$this$snapshots"    # Lcom/google/firebase/database/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/Query;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/google/firebase/database/DataSnapshot;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/google/firebase/database/DatabaseKt$snapshots$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/database/DatabaseKt$snapshots$1;-><init>(Lcom/google/firebase/database/Query;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public static final synthetic getValue(Lcom/google/firebase/database/DataSnapshot;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$getValue"    # Lcom/google/firebase/database/DataSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/DataSnapshot;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 50
    .local v0, "$i$f$getValue":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/google/firebase/database/DatabaseKt$getValue$1;

    invoke-direct {v1}, Lcom/google/firebase/database/DatabaseKt$getValue$1;-><init>()V

    check-cast v1, Lcom/google/firebase/database/GenericTypeIndicator;

    invoke-virtual {p0, v1}, Lcom/google/firebase/database/DataSnapshot;->getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final synthetic getValue(Lcom/google/firebase/database/MutableData;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$getValue"    # Lcom/google/firebase/database/MutableData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/MutableData;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    .local v0, "$i$f$getValue":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/google/firebase/database/DatabaseKt$getValue$2;

    invoke-direct {v1}, Lcom/google/firebase/database/DatabaseKt$getValue$2;-><init>()V

    check-cast v1, Lcom/google/firebase/database/GenericTypeIndicator;

    invoke-virtual {p0, v1}, Lcom/google/firebase/database/MutableData;->getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final synthetic values(Lcom/google/firebase/database/Query;)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .param p0, "$this$values"    # Lcom/google/firebase/database/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/Query;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 130
    .local v0, "$i$f$values":I
    invoke-static {p0}, Lcom/google/firebase/database/DatabaseKt;->getSnapshots(Lcom/google/firebase/database/Query;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .local v1, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 139
    .local v2, "$i$f$map":I
    move-object v3, v1

    .local v3, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 140
    .local v4, "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 141
    .local v5, "$i$f$unsafeFlow":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v6, Lcom/google/firebase/database/DatabaseKt$values$$inlined$map$1;

    invoke-direct {v6, v3}, Lcom/google/firebase/database/DatabaseKt$values$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 142
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 143
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 130
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    return-object v6
.end method
