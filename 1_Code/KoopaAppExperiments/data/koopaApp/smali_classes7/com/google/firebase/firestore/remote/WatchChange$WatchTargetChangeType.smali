.class public final enum Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
.super Ljava/lang/Enum;
.source "WatchChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/WatchChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WatchTargetChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

.field public static final enum Added:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

.field public static final enum Current:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

.field public static final enum NoChange:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

.field public static final enum Removed:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

.field public static final enum Reset:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 172
    new-instance v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    const-string v1, "NoChange"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->NoChange:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 173
    new-instance v1, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    const-string v2, "Added"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Added:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 174
    new-instance v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    const-string v3, "Removed"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Removed:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 175
    new-instance v3, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    const-string v4, "Current"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Current:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 176
    new-instance v4, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    const-string v5, "Reset"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Reset:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 171
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->$VALUES:[Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 171
    const-class v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    .locals 1

    .line 171
    sget-object v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->$VALUES:[Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    return-object v0
.end method
