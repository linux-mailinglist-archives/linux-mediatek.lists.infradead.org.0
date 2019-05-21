Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B41AC24AAD
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 10:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+fXIIgMibE+hIm6DC44SnE9yyrG2QSX3sZKd3lY8mKg=; b=JvKeSVsI2ofwci
	T8AWk+NJLzI+HVZsXxajA5ShjF/WVeTJMlt1Ngzm4LwFD6Nrj1d3ST9eHCv6yVciU8cDzGIRSY4sZ
	nULREpt4CfTCx3w2cAFsH/rZhnSiaAGYMEtpsmNLH/ZhWihVxjWztncB2GMEe7TfGvM9qwLsbF81/
	p++vJqEGKx9Osc9xPzUMuY9/UZmss3AW3nGdDddMGrZjihar9vb3HhKK4sOl8Yk4GUHQOf5PScUb8
	ff1UlGrdXgm2tUqv+cLa9Pj95cFoP5C7PsUpxeJ3Wd3aRF++OkK999IbLXgc6dHIcE2fc5uwSZ5NV
	p/Ughtf4mtZiedcP5rpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0QT-0000Lb-Lu; Tue, 21 May 2019 08:47:13 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0QP-0000Kf-JL
 for linux-mediatek@lists.infradead.org; Tue, 21 May 2019 08:47:11 +0000
Received: by mail-pl1-x635.google.com with SMTP id p1so2727249plo.2
 for <linux-mediatek@lists.infradead.org>; Tue, 21 May 2019 01:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cBQpnNC7cx5OsBOJCw5hI7DNKrfhdtLUAlzCJ/LaMss=;
 b=WslhLKd9eAkgA9Co/HbEn3iQLbkReIdUXiscIHlchHPMfiBoC4KOJen645cNJYFgYf
 GCaiY+EOVaaRfIgTiiw3Km8tr5qXoq57xF2v6ghsDUsH0rP4e5wcTtjOkxI2jvTG1Z0r
 LyWWC09Ye3SvEq58GIY+1ZW41HNbZXHyPbI2Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cBQpnNC7cx5OsBOJCw5hI7DNKrfhdtLUAlzCJ/LaMss=;
 b=JoSKfbEBfbSjLXl7GPwd0ndPuHNtomXRJDXcpCiKSJptJEjfYwLdrnwNPQOOR5LPUR
 d+7jy6kWQV6jnMJFcF1zPiNYhlmlgAnP3BK1Jv7Pp88JBTlUSzuHpTsGjMq/+ySPk3Qn
 tsxRDunPUr8bFuj06fL4y35JEwhv3tjHGoesPl1eA01N6YSTsvhP/MdEw0xaQCayysCa
 OXCYzP7C3MiLdkIbv60BgOhULjvneaokDmeuSnSW0LN1meylEsR0kJj8Zsw4NkPhMIN6
 ekYfDi38PsrYg+TR9USJ9pjIQhBoXD2ymNRhQpYpZ+qGF5Nvt8CWfXQB2a38ypv+j674
 nJBg==
X-Gm-Message-State: APjAAAWJ0obqSwXscxBgPNg9gE5Zq7NjWx9mdB1R5sb7n2dRdj+K4o9u
 rNr5oEUW58A2mNBDgpjm5xDFcedhB42Mnw==
X-Google-Smtp-Source: APXvYqyBT8UBQCsPh/fg2sRbFs9aVUy6oJxHY0tUrJssB44cn3L2H7g0apXMGmMtCBcUuyzyw2vXGg==
X-Received: by 2002:a17:902:169:: with SMTP id
 96mr33484592plb.272.1558428428380; 
 Tue, 21 May 2019 01:47:08 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id r138sm27845868pfr.2.2019.05.21.01.47.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 01:47:07 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] support 8250-mtk uart in-band wake up
Date: Tue, 21 May 2019 16:46:59 +0800
Message-Id: <20190521084701.100179-1-tientzu@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_014709_666987_AFD0F9FB 
X-CRM114-Status: UNSURE (   5.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:635 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Claire Chang <tientzu@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-serial@vger.kernel.org, changqi.hu@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

enable irq wake on an edge sensitive interrupt of Rx pin before suspend to
support uart in-band wake up

Claire Chang (2):
  dt-bindings: serial: add documentation for Rx in-band wakeup support
  uart: mediatek: support Rx in-band wakeup

 .../devicetree/bindings/serial/mtk-uart.txt   | 13 ++++++--
 drivers/tty/serial/8250/8250_mtk.c            | 33 +++++++++++++++++++
 2 files changed, 44 insertions(+), 2 deletions(-)

-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
