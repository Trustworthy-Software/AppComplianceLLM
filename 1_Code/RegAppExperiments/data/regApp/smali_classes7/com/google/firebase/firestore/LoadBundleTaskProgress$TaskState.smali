.class public final enum Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;
.super Ljava/lang/Enum;
.source "LoadBundleTaskProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/LoadBundleTaskProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

.field public static final enum ERROR:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

.field public static final enum RUNNING:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

.field public static final enum SUCCESS:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->ERROR:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    .line 35
    new-instance v1, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    const-string v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->RUNNING:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    .line 36
    new-instance v2, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    const-string v3, "SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->SUCCESS:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    .line 33
    filled-new-array {v0, v1, v2}, [Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->$VALUES:[Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->$VALUES:[Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    return-object v0
.end method
