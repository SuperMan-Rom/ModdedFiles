.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;

.field final synthetic val$publicUrl:Ljava/lang/String;

.field final synthetic val$uploadContent:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

.field final synthetic val$uploadFileResponse:Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$1;->val$uploadFileResponse:Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$1;->val$uploadContent:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$1;->val$publicUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$1;->val$uploadFileResponse:Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setRequestToken(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$1;->val$uploadContent:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setTag(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$1;->val$publicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setPublicUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;->onFileUploaded(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;)V

    return-void
.end method