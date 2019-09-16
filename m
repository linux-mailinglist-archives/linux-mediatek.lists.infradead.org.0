Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F21B39BC
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Sep 2019 13:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vjBIYIyn1VBpexV17RNJzWF1lwOobkKevMA3SLYFGc=; b=uUfO0WRP+Fw6K3
	E+dF8gv6DY9+iZwDAx2/w2rcnSIND+Aq0ANZee80eFYAZrxvGaItuF2sLcq/J1K3pacOcHoMyxylo
	IabGVHKsWbTM++GA32TresgVFJzR9YSzpht4HBD34h6F6Ff1dHWEqFNvnVa5x4lfwXHzlmtft4ZlR
	G9FBTL78vkr2CyMYVJt6N5jqgTV6Z2kp5uPyPlLahGsmEV0EAK2uA5ASkto4gNgFyGb4pZZ9O9spx
	/kx3zbPJ2NY8zZGj/84F0ZRGIDUuZFRM7zylTptLh9fc+b/MSlDo/XMzLjg2vNZcTvggUm9K4G4PK
	UxC8Xk5e6Ohpt8PGD9UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9pVk-0006QL-2x; Mon, 16 Sep 2019 11:49:40 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9pVd-0006Nh-6v
 for linux-mediatek@lists.infradead.org; Mon, 16 Sep 2019 11:49:35 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-166-eM_ZKBYxM-CKIRdpMPgtuQ-1; Mon, 16 Sep 2019 12:49:23 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 16 Sep 2019 12:49:22 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 16 Sep 2019 12:49:22 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-tip-commits@vger.kernel.org" <linux-tip-commits@vger.kernel.org>
Subject: RE: [tip: sched/core] sched/psi: Correct overly pessimistic size
 calculation
Thread-Topic: [tip: sched/core] sched/psi: Correct overly pessimistic size
 calculation
Thread-Index: AQHVaoS2xzP/Zpoyw0CDGPLgyB3STacuM1dg
Date: Mon, 16 Sep 2019 11:49:22 +0000
Message-ID: <ead094dabae64e6c978e94b617c8d08c@AcuMS.aculab.com>
References: <20190912103452.13281-1-miles.chen@mediatek.com>
 <156841460535.24167.6273030361884540421.tip-bot2@tip-bot2>
In-Reply-To: <156841460535.24167.6273030361884540421.tip-bot2@tip-bot2>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: eM_ZKBYxM-CKIRdpMPgtuQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_044933_525893_4C805EFC 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [207.82.80.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "wsd_upstream@mediatek.com" <wsd_upstream@mediatek.com>,
 Peter Zijlstra <peterz@infradead.org>, Miles Chen <miles.chen@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Miles Chen
> Sent: 13 September 2019 23:43
> The following commit has been merged into the sched/core branch of tip:
> 
> Commit-ID:     4adcdcea717cb2d8436bef00dd689aa5bc76f11b
> Gitweb:        https://git.kernel.org/tip/4adcdcea717cb2d8436bef00dd689aa5bc76f11b
> Author:        Miles Chen <miles.chen@mediatek.com>
> AuthorDate:    Thu, 12 Sep 2019 18:34:52 +08:00
> Committer:     Ingo Molnar <mingo@kernel.org>
> CommitterDate: Fri, 13 Sep 2019 07:49:28 +02:00
> 
> sched/psi: Correct overly pessimistic size calculation
> 
> When passing a equal or more then 32 bytes long string to psi_write(),
> psi_write() copies 31 bytes to its buf and overwrites buf[30]
> with '\0'. Which makes the input string 1 byte shorter than
> it should be.
> 
> Fix it by copying sizeof(buf) bytes when nbytes >= sizeof(buf).
> 
> This does not cause problems in normal use case like:
> "some 500000 10000000" or "full 500000 10000000" because they
> are less than 32 bytes in length.
> 
> 	/* assuming nbytes == 35 */
> 	char buf[32];
> 
> 	buf_size = min(nbytes, (sizeof(buf) - 1)); /* buf_size = 31 */
> 	if (copy_from_user(buf, user_buf, buf_size))
> 		return -EFAULT;
> 
> 	buf[buf_size - 1] = '\0'; /* buf[30] = '\0' */

Wouldn't it be better to also allow the user to pass
an unterminated string?
So leave the '-1' on the assignment to buf_size, but remove
it from the last line.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
