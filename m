Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 246A22B043
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 10:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dU+eP9bb5WsjWw3mWcNc02B36Zt00oU4DedOZna4B3A=; b=o/NPZDEchhaARS
	iTxHg2pUYBh/92QvxSfiDMyBt1mmOG8TXUr0aZSwq/ltIhiXEXtl8BmGoNv03cTY3YCUNbfE57xjM
	ynmEOY6Fy9i4LgVUyXMDK60BTQBife4IUOPGFdrmVVIm9nxy82CHlvfxin75DfTYAeQoC6B54eJLY
	SePI2lqL40mNxlDQ5cnFyf5uUKhB78LrJ5uMKJR1+3iJvfF0ZzCxPgDfm00ATCoQLHBJtBET2A0kO
	SHAuZipIkBq/NUA6RYGryg7q1ueLWu5p31FlDaSIlXleP7LxGT7DmkdaICzjMXpRZaMSklen+U3on
	b7xc4Y1gcO+K0Xhuk6oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVB36-0006hB-DC; Mon, 27 May 2019 08:32:04 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVB32-0006gA-Uf
 for linux-mediatek@lists.infradead.org; Mon, 27 May 2019 08:32:02 +0000
Received: by mail-pf1-x432.google.com with SMTP id a23so9181079pff.4
 for <linux-mediatek@lists.infradead.org>; Mon, 27 May 2019 01:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PGMGnU7bw686SIdW3vgxfTructN9L6Cf5iAj7/YhEG4=;
 b=C/UKJrAxvjKIJGfm3LByb902UV/Wo/Aiirw35D0zlboFcOYF5a3E/70eLACjFK7zs+
 flUZAq8e05EY9pPd8DGdCGjbk6PDoWi7+ut7hfWp0V6BJ6DyKTw/l3Tpdo99zArp//kC
 pilyuTG5GpiseAo0anjmyBBI5TC9D10yDSSaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PGMGnU7bw686SIdW3vgxfTructN9L6Cf5iAj7/YhEG4=;
 b=eH8UQ0CIhp6R1Zyvtx/uCEwTUcJqIe8bguSFVLIxqbNLQhWiUuo1I2eHlnRIQSZ+SV
 0ZjZy4fuhRdvFl8MdxgiglW6LYQ/Jcl93wYzdJPiiBgGSGSNrb1yAvnWpyH/bG5WYWoc
 NwdhnRCW7z2FH/TrDRMuXkOpinsJvo0FBE2AKXSOxq0nx7m7IJ5ueWbFonEA88eK3Q0H
 dc8lyh+8V198n4gu2flKzF1HGKzpx0cpTueUvg8UQ6KfOA7KebGz+/Gvm65ZERBmNDvo
 2dnYoPv4u548lGcGcni2d1p4+J8O7Sjf5q56uNuQNSrqu2aPmOyROmJAzx7fpaJT/oCE
 2lkg==
X-Gm-Message-State: APjAAAVrW1L8M1uWCQJ32+uPG0zcPr7hPjBCVClsykcZEzpU2PmiCLGz
 tT5ph6mU0PkYEME02LydgRkUyw==
X-Google-Smtp-Source: APXvYqz/asWNgFUAYKi4OWzSmEVnPj1RnEePEisMcbO3kbG5gHvCia22OVQY8buyqVMfOPBX1Y3Qnw==
X-Received: by 2002:a63:4104:: with SMTP id o4mr5363655pga.345.1558945914922; 
 Mon, 27 May 2019 01:31:54 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id d35sm2952236pgb.55.2019.05.27.01.31.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 01:31:54 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 0/2] support 8250-mtk uart in-band wake up
Date: Mon, 27 May 2019 16:31:48 +0800
Message-Id: <20190527083150.220194-1-tientzu@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_013201_012848_334CA32A 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Claire Chang <tientzu@chromium.org>, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 changqi.hu@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

changes in v3:
	1. remove an extra line in patch 2/2

changes in v2:
	1. add commit message
	2. drop return err in the resume path
	3. ignore disable_irq_wake()'s return value

Claire Chang (2):
  dt-bindings: serial: add documentation for Rx in-band wakeup support
  uart: mediatek: support Rx in-band wakeup

 .../devicetree/bindings/serial/mtk-uart.txt   | 13 ++++++++--
 drivers/tty/serial/8250/8250_mtk.c            | 24 +++++++++++++++++++
 2 files changed, 35 insertions(+), 2 deletions(-)

-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
