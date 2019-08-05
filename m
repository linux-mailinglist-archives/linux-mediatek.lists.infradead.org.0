Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E12D81783
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 12:50:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aFcD2r1q/UybLD1ZBusZAokMJPx5fJt+n2zt0be+d+g=; b=ftXzUnSKBfiTaP
	lJGzlSdxgGUeJAN4ma6KDYgqEXzXcwKFjP4Iu99J6fnG9d6agnuyVAK8cTVlpGSz7Tsb/H0MXQd0K
	a2CyaTUP5GXUkPEuXuqNmRb/MhTsEEMWg33nP+3YRjjUnIfcAzwb8S2DLDCzsQcv/ev4QN/y/26BD
	sMIHxZG7y3yvadbHSlByv97bQAe2QHT0Sy3jZB796BbiP0U1dJgwEyalJGDlFomJjor702K6ggvHn
	UaOZYm2RVcuzlnqeamGUe2Ewm8LAttkSYtjiRUsTnJtIgaXs5SmQPVAndHtj4AK33xMJqECSTn18y
	YcVKO2ioBzRoUrki8GKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaZe-0003cx-Es; Mon, 05 Aug 2019 10:50:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaYn-0002AC-IM
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 10:49:52 +0000
Received: by mail-pl1-x642.google.com with SMTP id t14so36297688plr.11
 for <linux-mediatek@lists.infradead.org>; Mon, 05 Aug 2019 03:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YsidF0qi6Z2qBnCAOuW5bxrXb8326BK2qz06ZUf0X/w=;
 b=PrpXE5eiKZHvNEdDzMLbfYEYCjEAafeeZHIIHLqKxpKdY8Mi6Op1ZqHE6kfZcf9dKf
 SCfOPnNG0tBVCJrIS3Nf37dXAhjBpSVifnR0hk1jCRSn5BXq66eOKoVmWDRQC4rIhtPw
 UKOGu7TcYnqer4stogIL+ir8RvTJdkTrH3bug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YsidF0qi6Z2qBnCAOuW5bxrXb8326BK2qz06ZUf0X/w=;
 b=ZQjRqRhOqdMTwo9foZVRE55ghofsa5IMcpJw0zG7lj53Cyn+BJsogQ365Eec3AEurj
 KjPyNoCgjUnz5TrTFRBWDJ1NASBq5REki3b2zOMnQFVQQes3snpExdVxua5z+wY31qIi
 3miJaiDMQYoLBCuSQzCzQ2oqhrilWwpLcw96/L4oc0RS828GXOm+M/NrX6gDpTjVBhfS
 W3bq2yRYigmb9TK5JvA5gotNwoAoj2AECtTPLhiy5ihAlETxWd0geD4LdjmMSVU6YBdM
 ekzIYw2GOf4Z77E9sdnKuSeZIundZwf7DVXHXtNhYOzMNkDc+kKdmLoaom6msEuw5H+O
 tQNA==
X-Gm-Message-State: APjAAAXENoZtMlpqDsFkGBTZcMkQ2Mv1i+hMZrqDtg4rzX+mAmeObBD5
 NUDYsco/bBtK1xSDhGoaOkjUvQ==
X-Google-Smtp-Source: APXvYqzyB+3mcIng1GWeru39D53kbYEa54AYtiuR9pisKPZa1ZdF84J/4WUwwTBfBEGErTLOI4fQQQ==
X-Received: by 2002:a17:902:4501:: with SMTP id
 m1mr15300085pld.264.1565002188356; 
 Mon, 05 Aug 2019 03:49:48 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id 65sm88693864pgf.30.2019.08.05.03.49.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 03:49:47 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v14 0/5] Add support for mt8183 SCP.
Date: Mon,  5 Aug 2019 18:49:21 +0800
Message-Id: <20190805104932.96745-1-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_034949_698413_0167740D 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add support for controlling and communicating with mt8183's system
control processor (SCP), using the remoteproc & rpmsg framework.
And also add a cros_ec driver for CrOS EC host command over rpmsg.

The overall structure of the series is:
* remoteproc/mtk_scp.c: Control the start / stop of SCP (Patch 2, 3).
* remoteproc/mtk_scp_ipi.c: Communicates to SCP using inter-processor
  interrupt (IPI) and shared memory (Patch 2, 3).
* rpmsg/mtk_rpmsg.c: Wrapper to wrap the IPI communication into a rpmsg
  device. Supports name service for SCP firmware to
  announce channels (Patch 4).
* add scp dts node to mt8183 platform (Patch 5).

Changes from v13:
 - Move include/linux/platform_data/mtk_scp.h to
   include/linux/remoteproc/mtk_scp.h.
 - Rename scp_get_reserve_* to scp_get_reserved_*.
 - Add lock for access of scp->ipi_desc.
 - Lock the whole ipi_send function.
 - Move more setting of cache size from SCP firmware to kernel driver,
   to prevent problem while loading firmware onto DRAM.
 - Minor fixes addressing comment.

Changes from v12:
 - Initialize cache before firmware load, to avoid problem while loading
   large firmware.
 - Disable watchdog before stopping SCP, to avoid extra warning message.
 - Fix new warnings by checkpatch.

Changes from v11:
 - Fixed a bug that mtk_rpmsg_endpoint is not properly cleaned up if
   rproc_boot fails.
 - Add missing documentation in comment.

Changes from v10:
 - Drop applied cros_ec_rpmsg patches.
 - Add clock reset before loading SCP firmware.
 - Fix some type mismatch warnings when printing debug messages.

Changes from v9:
 - Remove reserve-memory-vpu_share node.
 - Remove change to cros_ec_commands.h (That is already in
   https://lore.kernel.org/lkml/20190518063949.GY4319@dell/T/)

Changes from v8:
 - Rebased onto https://patchwork.kernel.org/cover/10962385/.
 - Drop merged cros_ec_rpmsg patch, and add scp dts node patch.
 - Add more reserved memory region.

Changes from v7:
 - Rebase onto https://lore.kernel.org/patchwork/patch/1059196/.
 - Fix clock enable/disable timing for SCP driver.
 - Add more SCP IPI ID.

Changes from v6:
 - Decouple mtk_rpmsg from mtk_scp.
 - Change data of EC response to be aligned to 4 bytes.

Changes from v5:
 - Add device tree binding document for cros_ec_rpmsg.
 - Better document in comments for cros_ec_rpmsg.
 - Remove dependency on CONFIG_ in binding tree document.

Changes from v4:
 - Merge patch 6 (Load ELF firmware) into patch 2, so the driver loads
   ELF firmware by default, and no longer accept plain binary.
 - rpmsg_device listed in device tree (as a child of the SCP node) would
   have it's device tree node mapped to the rpmsg_device, so the rpmsg
   driver can use the properties on device tree.

Changes from v3:
 - Make writing to SCP SRAM aligned.
 - Add a new patch (Patch 6) to load ELF instead of bin firmware.
 - Add host event support for EC driver.
 - Fix some bugs found in testing (missing spin_lock_init,
   rproc_subdev_unprepare to rproc_subdev_stop).
 - Fix some coding style issue found by checkpatch.pl.

Changes from v2:
 - Fold patch 3 into patch 2 in v2.
 - Move IPI id around to support cross-testing for old and new firmware.
 - Finish more TODO items.

Changes from v1:
 - Extract functions and rename variables in mtk_scp.c.
 - Do cleanup properly in mtk_rpmsg.c, which also removes the problem of
   short-lived work items.
 - Code format fix based on feedback for cros_ec_rpmsg.c.
 - Extract feature detection for SCP into separate patch (Patch 6).

Eddie Huang (1):
  arm64: dts: mt8183: add scp node

Erin Lo (3):
  dt-bindings: Add a binding for Mediatek SCP
  remoteproc/mediatek: add SCP support for mt8183
  remoteproc: mt8183: add reserved memory manager API

Pi-Hsun Shih (1):
  rpmsg: add rpmsg support for mt8183 SCP.

 .../bindings/remoteproc/mtk,scp.txt           |  36 +
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |  11 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      |  12 +
 drivers/remoteproc/Kconfig                    |  10 +
 drivers/remoteproc/Makefile                   |   1 +
 drivers/remoteproc/mtk_common.h               |  92 +++
 drivers/remoteproc/mtk_scp.c                  | 710 ++++++++++++++++++
 drivers/remoteproc/mtk_scp_ipi.c              | 159 ++++
 drivers/rpmsg/Kconfig                         |   9 +
 drivers/rpmsg/Makefile                        |   1 +
 drivers/rpmsg/mtk_rpmsg.c                     | 414 ++++++++++
 include/linux/remoteproc/mtk_scp.h            | 168 +++++
 include/linux/rpmsg/mtk_rpmsg.h               |  38 +
 13 files changed, 1661 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
 create mode 100644 drivers/remoteproc/mtk_common.h
 create mode 100644 drivers/remoteproc/mtk_scp.c
 create mode 100644 drivers/remoteproc/mtk_scp_ipi.c
 create mode 100644 drivers/rpmsg/mtk_rpmsg.c
 create mode 100644 include/linux/remoteproc/mtk_scp.h
 create mode 100644 include/linux/rpmsg/mtk_rpmsg.h

-- 
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
