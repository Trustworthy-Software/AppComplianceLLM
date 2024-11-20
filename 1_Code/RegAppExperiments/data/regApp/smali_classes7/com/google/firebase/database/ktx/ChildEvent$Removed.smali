.class public final Lcom/google/firebase/database/ktx/ChildEvent$Removed;
.super Lcom/google/firebase/database/ktx/ChildEvent;
.source "ChildEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/ktx/ChildEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Removed"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration."
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = ""
        imports = {}
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/google/firebase/database/ktx/ChildEvent$Removed;",
        "Lcom/google/firebase/database/ktx/ChildEvent;",
        "snapshot",
        "Lcom/google/firebase/database/DataSnapshot;",
        "(Lcom/google/firebase/database/DataSnapshot;)V",
        "getSnapshot",
        "()Lcom/google/firebase/database/DataSnapshot;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final snapshot:Lcom/google/firebase/database/DataSnapshot;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 1
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/ktx/ChildEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/google/firebase/database/ktx/ChildEvent$Removed;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/firebase/database/ktx/ChildEvent$Removed;Lcom/google/firebase/database/DataSnapshot;ILjava/lang/Object;)Lcom/google/firebase/database/ktx/ChildEvent$Removed;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/firebase/database/ktx/ChildEvent$Removed;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/ktx/ChildEvent$Removed;->copy(Lcom/google/firebase/database/DataSnapshot;)Lcom/google/firebase/database/ktx/ChildEvent$Removed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/google/firebase/database/DataSnapshot;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/ktx/ChildEvent$Removed;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    return-object v0
.end method

.method public final copy(Lcom/google/firebase/database/DataSnapshot;)Lcom/google/firebase/database/ktx/ChildEvent$Removed;
    .locals 1

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/database/ktx/ChildEvent$Removed;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/ktx/ChildEvent$Removed;-><init>(Lcom/google/firebase/database/DataSnapshot;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/database/ktx/ChildEvent$Removed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/database/ktx/ChildEvent$Removed;

    iget-object v3, p0, Lcom/google/firebase/database/ktx/ChildEvent$Removed;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    iget-object v1, v1, Lcom/google/firebase/database/ktx/ChildEvent$Removed;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getSnapshot()Lcom/google/firebase/database/DataSnapshot;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/firebase/database/ktx/ChildEvent$Removed;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/ktx/ChildEvent$Removed;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed(snapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/ktx/ChildEvent$Removed;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
