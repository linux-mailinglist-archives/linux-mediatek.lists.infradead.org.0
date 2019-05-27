Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1CC2AEFF
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 08:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wtw8ZoUAzjIfVd1Vg6K1t9MRbQgu/3oIHyWnH2ILBoQ=; b=fjiHuV2a2ZlAPq
	iNXi5A2zoEV73AiHzh54UuxthRQdIWKhDXVpfNbGoC3ZKQyBvQvlddUW5ivqKpU9bLA0A4U+qFvCq
	KuNxXkgc92HamrB+zN8pJFGZEOMvg0s08ROyv/kkaMIICKnCSKnd8XronfuDwOyapzyiIAlQxiioy
	OC1X/4ckdTfYNg7SYRNa1xo6P/6cRn1SXB/PLIvWAsN8biTVIo882F3myHFkbHvn8GK2qF8HZ28U1
	ARuyfIy8g7SR+s4/2dHLxdqfr1mcvUZ1ZusuGojw3gEJbJtkLkeyznBTrOpDUU1B/Mb5AjCXryaBP
	iTeRrPW+ELVkwUN1HNwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9YH-0001Mw-Vv; Mon, 27 May 2019 06:56:09 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9YF-0001Ma-Ii
 for linux-mediatek@lists.infradead.org; Mon, 27 May 2019 06:56:08 +0000
Received: by mail-pg1-x52c.google.com with SMTP id v9so2156338pgr.13
 for <linux-mediatek@lists.infradead.org>; Sun, 26 May 2019 23:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TeNy7RkvUC/tZIz1EDVrSnZnLU7u1m9Wj+LAMsx50Jc=;
 b=eFgp3V2hvv7JafUIy375NmPswn7jajZjuQkt7lJRS4JAQVdZJ8Mhh0XBIqNoI3LVpG
 Vbl2+8WCQXIufkTOJ08L1GQtsryPmknnmkSaUPn45jlpavim2u4oFlnfL0G7gjixJ+Nt
 KDC0Pqu6LOZ8cQ7Cc9o8jWjn6PGPUGr8rleJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TeNy7RkvUC/tZIz1EDVrSnZnLU7u1m9Wj+LAMsx50Jc=;
 b=uJLFl+wSaQg9Tz4d4Ws+oOl+f/7aRHd9ovhPEw9gZBoir8+plsm6oeOOVch2vy5niV
 nQATOxkyayz7/BGWMeQkFbJpJ1wyPyml8qhU4r1gR9oqF8WT27aRjarE+T4iH5OwKE76
 Qftgo6hzWgJR32vcUUWsc/BHNZsNt8IRHnG5YH9BUkmS5vVRaUVr0F3FgLNxO9ExDsQ8
 G1kKuRHXyUQIqpxKHL/ByIBkpR7v8Aqz3zFIXhMkDyuJKIOwvyzEA0NSJrjSA8vL5FC+
 od4FQajXO6QWwSE94+H3NgcwOeKZm66UP67UNvn8PthEfT86D2+5sqEeAlazCs32gG52
 aLFw==
X-Gm-Message-State: APjAAAWWM4Iv9BYVe9z+GfmxP9nqZsVTO3cPsFwscCc/VW/1ZkE3eBzl
 y7iXfFpFBGRUouQ2Fau03gQMzQ==
X-Google-Smtp-Source: APXvYqyUuaOndaoSwbxgEgdDYQ3O0ZdeC94zB9K+jNz+W0jsMNQ5zp3Pgxj9Iz2WqwJOydRXgOzREw==
X-Received: by 2002:a63:7443:: with SMTP id e3mr28520078pgn.391.1558940166061; 
 Sun, 26 May 2019 23:56:06 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id n12sm9469049pgq.54.2019.05.26.23.56.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 23:56:05 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/2] support 8250-mtk uart in-band wake up
Date: Mon, 27 May 2019 14:55:57 +0800
Message-Id: <20190527065559.66056-1-tientzu@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_235607_641431_0E64E21B 
X-CRM114-Status: UNSURE (   5.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

changes in v2:
	1. add commit message
	2. drop return err in the resume path
	3. ignore disable_irq_wake()'s return value

Claire Chang (2):
  dt-bindings: serial: add documentation for Rx in-band wakeup support
  uart: mediatek: support Rx in-band wakeup

 .../devicetree/bindings/serial/mtk-uart.txt   | 13 ++++++++--
 drivers/tty/serial/8250/8250_mtk.c            | 26 +++++++++++++++++++
 2 files changed, 37 insertions(+), 2 deletions(-)

-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
