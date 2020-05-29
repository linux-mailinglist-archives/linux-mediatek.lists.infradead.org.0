Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D6B1E82AD
	for <lists+linux-mediatek@lfdr.de>; Fri, 29 May 2020 17:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=juZF+1O/T2OVo3t178xTl7+NqgpSTOMt/4+qR974zPA=; b=Fqr
	TZPUy2EXgp2WCTy35p1HCKcgsdV7oYXlXldsACKMBMz4uYFbBuj1AI2ztwKAuI8L9BuyX3Ng8beLK
	nQ9mz4JFTqeQQsNpH0g2983cXW5i+JhQucTSQ4Fa6smrrsrBLQm5NxDUJhuHDUG3TYGTfYQ78W5wP
	/VoZirfcKY82g7KUCVN/CI4h1ZsapnmSAUaT8u4qjfKt9cr4uR6QgDxc7sTLc1fXkk21o8WQUi8kW
	xy9iNIwU3T1gyaNUyJufxR0HGbntip3DEzLoE0mul9aLz/AKsKwNFob7Q0pKcp9yrofDpSiiogKy/
	fn92Ih+oDdd2iF3LZDWj326HAQcaMsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehQ2-0000Aw-3R; Fri, 29 May 2020 15:59:38 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehPg-0008Pf-S4
 for linux-mediatek@lists.infradead.org; Fri, 29 May 2020 15:59:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590767962; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=D/JMvgaJGqi1jK8NRGNKnGGrv9rdFQusuj9ABakOAT0=;
 b=Gyr13u2xQMzMm6TaVio3BC6DOjA0cPSLsWt8rk4rG9tYMfNR94HhIHEWTHQF4H0Z5CkWK4ZZ
 UO5vpSz9va5faZMCPOf72hOI8Kiu3Yl0I7RHxHZnQfAOUnxaJU/hyTOblh3tJBUr/VrJxkuo
 rV83yqIvfdrTcfNK7GIggiel8Tk=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 5ed13148c6d4683243d85dac (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 29 May 2020 15:59:04
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D100BC433CB; Fri, 29 May 2020 15:59:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from zijuhu-gv.qualcomm.com (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: zijuhu)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B3176C433C6;
 Fri, 29 May 2020 15:59:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B3176C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=zijuhu@codeaurora.org
From: Zijun Hu <zijuhu@codeaurora.org>
To: sean.wang@mediatek.com, marcel@holtmann.org, johan.hedberg@gmail.com,
 matthias.bgg@gmail.com
Subject: [PATCH v1] Bluetooth: btmtkuart: Use serdev_device_write_buf()
 instead of serdev_device_write()
Date: Fri, 29 May 2020 23:58:56 +0800
Message-Id: <1590767936-21907-1-git-send-email-zijuhu@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_085922_503281_F259FA4B 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 mka@chromium.org, linux-mediatek@lists.infradead.org, zijuhu@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

serdev_device_write() is not appropriate at here because
serdev_device_write_wakeup() is not used to release completion hold
by the former at @write_wakeup member of struct serdev_device_ops.

Fix by using serdev_device_write_buf() instead of serdev_device_write().

Signed-off-by: Zijun Hu <zijuhu@codeaurora.org>
---
 drivers/bluetooth/btmtkuart.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/bluetooth/btmtkuart.c b/drivers/bluetooth/btmtkuart.c
index 8a81fbca5c9d..6c40bc75fb5b 100644
--- a/drivers/bluetooth/btmtkuart.c
+++ b/drivers/bluetooth/btmtkuart.c
@@ -695,8 +695,7 @@ static int btmtkuart_change_baudrate(struct hci_dev *hdev)
 
 	/* Send a dummy byte 0xff to activate the new baudrate */
 	param = 0xff;
-	err = serdev_device_write(bdev->serdev, &param, sizeof(param),
-				  MAX_SCHEDULE_TIMEOUT);
+	err = serdev_device_write_buf(bdev->serdev, &param, sizeof(param));
 	if (err < 0 || err < sizeof(param))
 		return err;
 
-- 
2.7.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
