Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E40D81FC48E
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jun 2020 05:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12pn5+dq9yyTOqvVPUzWiv3cdWJcTWJOmEkbBB9qrK0=; b=dl5FlgDwz8/GMQ
	LVq7RUPfPe5eEm3R7TFLEUPiLutuKY8IREPWTZZ34zXrv7H3PHkaUomisHEZlzjam9oTc0Z2nh3Ar
	Aez84XOGmmhuvAJ0kT2FQwbvNwjVPRWkvK3hp0C/kts0sFaCKLbrLjeuFkEAie7Znu+1B2TlvNfvj
	ZARC8/snQ4ZUEAUwdmYHwecYkwBoYnA09x1XVciAF3IT99LPsZS28qx5zaMi7xkDnJtw/E1FNcer1
	1cIYhhA4nIU+B6DSi84U2Ua6I63UHO3v89BJ1BPpsn5QYBg2kUZ9g34iEvuGXDPeQc2qwvNt+Kj+c
	HEQ5/WV1ycpimo/RQqig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlOWG-0001Ew-65; Wed, 17 Jun 2020 03:13:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOWD-0001EE-A4
 for linux-mediatek@lists.infradead.org; Wed, 17 Jun 2020 03:13:42 +0000
X-UUID: 28fbca9efe1c4d93a89c4b970f50001f-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=phSEVnx2YN8ID4XCGX38hcVMnB8sCkrhT2w5pB/6SzU=; 
 b=OtVrMGrk2d24P9D3MDB7UP9YijorkELM6xE0iS3WnN7WOgu1YUfMLcC9Hhi7U7O7XtNbGlf2dIvgi57jJbMZR1N7oKBIS2zgFaBDqUNM3xIfb9uj3N43OpKrtUy0Eqk896fVI/BS3Eq+qX1qTy2W8ZYESVz+ZQuuft/Rzq1BM4o=;
X-UUID: 28fbca9efe1c4d93a89c4b970f50001f-20200616
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1829769212; Tue, 16 Jun 2020 19:13:32 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 20:13:28 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 11:13:31 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 17 Jun 2020 11:13:26 +0800
From: <sean.wang@mediatek.com>
To: <nbd@nbd.name>, <lorenzo.bianconi@redhat.com>
Subject: Re: [PATCH v2 2/2] mt76: mt7615: fix different licenses in same driver
Date: Wed, 17 Jun 2020 11:13:30 +0800
Message-ID: <1592363610-13861-1-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <dae8a31520c0f30741f6e3bde76b7d4c8cf18de3.1592337119.git.ryder.lee@mediatek.com>
References: <dae8a31520c0f30741f6e3bde76b7d4c8cf18de3.1592337119.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_201341_353655_E00401BE 
X-CRM114-Status: UNSURE (   5.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-mediatek@lists.infradead.org, Ryder.Lee@mediatek.com,
 linux-wireless@vger.kernel.org, sean.wang@mediatek.com,
 Shayne.Chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

>Avoid using different licenses in the same driver.
>
>Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
>---
>@Sean @Lorenzo: For mt7615, I need to gather ACK from all people involved with the code.

I am fine with license change too.
Acked-by: Sean Wang <sean.wang@mediatek.com>

>---
> drivers/net/wireless/mediatek/mt76/mt7615/Kconfig    | 2 +-
> drivers/net/wireless/mediatek/mt76/mt7615/mmio.c     | 3 +++
> drivers/net/wireless/mediatek/mt76/mt7615/usb_init.c | 2 +-  drivers/net/wireless/mediatek/mt76/mt7615/usb_mcu.c  | 2 +-
> 4 files changed, 6 insertions(+), 3 deletions(-)
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
