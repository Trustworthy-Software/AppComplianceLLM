.class public final enum Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;
.super Ljava/lang/Enum;
.source "DatastoreTestTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

.field public static final enum ACTION_NOT_SET:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

.field public static final enum FIRESTORE_V1_ACTION:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9528
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    const/4 v1, 0x3

    const-string v2, "FIRESTORE_V1_ACTION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;->FIRESTORE_V1_ACTION:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    .line 9529
    new-instance v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    const-string v2, "ACTION_NOT_SET"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;->ACTION_NOT_SET:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    .line 9527
    filled-new-array {v0, v1}, [Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    move-result-object v0

    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;->$VALUES:[Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9531
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9532
    iput p3, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;->value:I

    .line 9533
    return-void
.end method

.method public static forNumber(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;
    .locals 1
    .param p0, "value"    # I

    .line 9543
    sparse-switch p0, :sswitch_data_0

    .line 9546
    const/4 v0, 0x0

    return-object v0

    .line 9544
    :sswitch_0
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;->FIRESTORE_V1_ACTION:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    return-object v0

    .line 9545
    :sswitch_1
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;->ACTION_NOT_SET:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9539
    invoke-static {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;->forNumber(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9527
    const-class v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    return-object v0
.end method

.method public static values()[Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;
    .locals 1

    .line 9527
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;->$VALUES:[Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    invoke-virtual {v0}, [Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 9550
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$DatastoreAction$ActionCase;->value:I

    return v0
.end method
