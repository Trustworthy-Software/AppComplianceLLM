.class public final Lcom/google/firebase/database/ktx/DatabaseKt;
.super Ljava/lang/Object;
.source "Database.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Database.kt\ncom/google/firebase/database/ktx/DatabaseKt\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,241:1\n47#2:242\n49#2:246\n50#3:243\n55#3:245\n106#4:244\n*S KotlinDebug\n*F\n+ 1 Database.kt\ncom/google/firebase/database/ktx/DatabaseKt\n*L\n222#1:242\n222#1:246\n222#1:243\n222#1:245\n222#1:244\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u001a\u0012\u0010\u0008\u001a\u00020\t*\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012\u001a\u001a\u0010\u0008\u001a\u00020\t*\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014\u001a\u0012\u0010\u0008\u001a\u00020\t*\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0014\u001a\u001c\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\u0006\u0008\u0000\u0010\u0016\u0018\u0001*\u00020\u000eH\u0087\u0008\u00a2\u0006\u0002\u0010\u0017\u001a\u001c\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\u0006\u0008\u0000\u0010\u0016\u0018\u0001*\u00020\u0018H\u0087\u0008\u00a2\u0006\u0002\u0010\u0019\u001a!\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00160\u0001\"\n\u0008\u0000\u0010\u0016\u0018\u0001*\u00020\u001b*\u00020\u0003H\u0087\u0008\"$\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0015\u0010\u0008\u001a\u00020\t*\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\"$\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0001*\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000f\u0010\u0005\u001a\u0004\u0008\u0010\u0010\u0007\u00a8\u0006\u001c"
    }
    d2 = {
        "childEvents",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/google/firebase/database/ktx/ChildEvent;",
        "Lcom/google/firebase/database/Query;",
        "getChildEvents$annotations",
        "(Lcom/google/firebase/database/Query;)V",
        "getChildEvents",
        "(Lcom/google/firebase/database/Query;)Lkotlinx/coroutines/flow/Flow;",
        "database",
        "Lcom/google/firebase/database/FirebaseDatabase;",
        "Lcom/google/firebase/ktx/Firebase;",
        "getDatabase",
        "(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/database/FirebaseDatabase;",
        "snapshots",
        "Lcom/google/firebase/database/DataSnapshot;",
        "getSnapshots$annotations",
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
.method public static final database(Lcom/google/firebase/ktx/Firebase;Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 2
    .param p0, "$this$database"    # Lcom/google/firebase/ktx/Firebase;
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "getInstance(app)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final database(Lcom/google/firebase/ktx/Firebase;Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 2
    .param p0, "$this$database"    # Lcom/google/firebase/ktx/Firebase;
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {p1, p2}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "getInstance(app, url)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final database(Lcom/google/firebase/ktx/Firebase;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 2
    .param p0, "$this$database"    # Lcom/google/firebase/ktx/Firebase;
    .param p1, "url"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
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
            "Lcom/google/firebase/database/ktx/ChildEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/google/firebase/database/ktx/DatabaseKt$childEvents$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/database/ktx/DatabaseKt$childEvents$1;-><init>(Lcom/google/firebase/database/Query;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 204
    return-object v0
.end method

.method public static synthetic getChildEvents$annotations(Lcom/google/firebase/database/Query;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getDatabase(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 2
    .param p0, "$this$database"    # Lcom/google/firebase/ktx/Firebase;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
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

    .line 146
    new-instance v0, Lcom/google/firebase/database/ktx/DatabaseKt$snapshots$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/database/ktx/DatabaseKt$snapshots$1;-><init>(Lcom/google/firebase/database/Query;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 160
    return-object v0
.end method

.method public static synthetic getSnapshots$annotations(Lcom/google/firebase/database/Query;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    return-void
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

    .annotation runtime Lkotlin/Deprecated;
        message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 107
    .local v0, "$i$f$getValue":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/google/firebase/database/ktx/DatabaseKt$getValue$1;

    invoke-direct {v1}, Lcom/google/firebase/database/ktx/DatabaseKt$getValue$1;-><init>()V

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

    .annotation runtime Lkotlin/Deprecated;
        message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 126
    .local v0, "$i$f$getValue":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/google/firebase/database/ktx/DatabaseKt$getValue$2;

    invoke-direct {v1}, Lcom/google/firebase/database/ktx/DatabaseKt$getValue$2;-><init>()V

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

    .annotation runtime Lkotlin/Deprecated;
        message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 222
    .local v0, "$i$f$values":I
    invoke-static {p0}, Lcom/google/firebase/database/ktx/DatabaseKt;->getSnapshots(Lcom/google/firebase/database/Query;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .local v1, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 242
    .local v2, "$i$f$map":I
    move-object v3, v1

    .local v3, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 243
    .local v4, "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 244
    .local v5, "$i$f$unsafeFlow":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v6, Lcom/google/firebase/database/ktx/DatabaseKt$values$$inlined$map$1;

    invoke-direct {v6, v3}, Lcom/google/firebase/database/ktx/DatabaseKt$values$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 245
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 246
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 222
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    return-object v6
.end method
