Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC1010C41C
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 Nov 2019 07:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:Date:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=zL1hd94WEclWLO+t9N+0DDMkHfhE01C795WOoVm7SMk=; b=jWq6PkWmoZVfDT
	i8EPGC+2XjEJ4HKRjQCP3A1rhCkAZG5Bfvc0y9IBEv39ZM0hFMKG9+JZ2D6/1RIQWYqs7fCC/+ZpM
	wo+MASPGyyWPGc+SSXDpGD+R26ZOblz5gSh689uHS+HmfrqXmWntXCpWNKkg5DVXoow4ACgu3aUgQ
	N4WMcZsZ/8soaIOHFSP9J8eWwh//eWYuBD0IUH/y97E49k7+C6z3ABVRELSq4DGDiCN5Ajf10wEMJ
	v1XLoqI9iRtfm5JrsIkXB2tZoGKpAmlmue/Xx8EZ/yA2fI3P65X9KKIOHG+HvLeTr0wM4ASD8VhaN
	oVxhEjd60OllRUy4TJGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaDf1-0003Jd-Ib; Thu, 28 Nov 2019 06:52:19 +0000
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaDeq-0003AC-UQ
 for linux-mediatek@lists.infradead.org; Thu, 28 Nov 2019 06:52:10 +0000
Received: by mail-il1-f197.google.com with SMTP id l13so5603019ils.1
 for <linux-mediatek@lists.infradead.org>; Wed, 27 Nov 2019 22:52:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=2d9JKwKzyEklAE9Y0Al7lbLvDjVGrJsOdz2MW8XRI6k=;
 b=FL0jmjDlgkEZDJHoctHBCGl9J+VrnZ/cNTwG3FlVqwkvOzHwDZdca7bqMMqInt1EWq
 dciUdU4A8zBm+xc+Fhy3clUqhO3Pm6u6yWfokTOYQMQu6GDEdc5rYUtLuvhMbLwYA5Lo
 +CddEhvNVYZ4D7GI3C4Bt49iKikybW8iP9LAQgmh9+sY9EkmdoefWFgEqDQswwnHDdQr
 Zj0ExAnmqHmPxP4VReBONnOkfG/VDmRlhAMeDd26FUsZ/q1kBovdxkGdlMBTURnAeRl4
 a+SLTmEMu/L00RNvZ4g15urPdoIy2JnRzhBL8I1Q/BlrQ2RHjoI8r9T78BKPl09MgWa/
 Aj5A==
X-Gm-Message-State: APjAAAUQ6TuiC9Cn0U+TO/m169WWsgcd0bgiL/HfE0W02eIGD2fvFfO0
 KwZYnCOMn0h8BVEN20KVtOarOztva2zKjj+4d+bftvhiuQgR
X-Google-Smtp-Source: APXvYqx5W1RZO7+3nd+L3OfHiIN1nhLb8vKwT1pMfJipAjyN/TdB0OArpLiFIBjYuYMxGprFVYmxz6y+5YYKemJMGYyZ2IplBP7m
MIME-Version: 1.0
X-Received: by 2002:a5d:8953:: with SMTP id b19mr13030362iot.168.1574923920949; 
 Wed, 27 Nov 2019 22:52:00 -0800 (PST)
Date: Wed, 27 Nov 2019 22:52:00 -0800
In-Reply-To: <001a11447acae6b4560568e08829@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000db46890598628cf4@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in ntfs_attr_find
From: syzbot <syzbot+aed06913f36eff9b544e@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-ntfs-dev@lists.sourceforge.net, matthias.bgg@gmail.com, olof@lixom.net, 
 s.hauer@pengutronix.de, syzkaller-bugs@googlegroups.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_225208_979972_2A02AA59 
X-CRM114-Status: UNSURE (   2.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

syzbot has bisected this bug to:

commit 9dd068a4b85a68733213c874d08ef768bbec8d01
Author: Matthias Brugger <matthias.bgg@gmail.com>
Date:   Fri Jul 31 15:03:13 2015 +0000

     soc: mediatek: Fix SCPSYS compilation

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10880f02e00000
start commit:   0adb3285 Linux 4.16
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=12880f02e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=14880f02e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=df0c336cc3b55d45
dashboard link: https://syzkaller.appspot.com/bug?extid=aed06913f36eff9b544e
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1430ded3800000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1533214b800000

Reported-by: syzbot+aed06913f36eff9b544e@syzkaller.appspotmail.com
Fixes: 9dd068a4b85a ("soc: mediatek: Fix SCPSYS compilation")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
